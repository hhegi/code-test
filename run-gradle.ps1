param(
  [Parameter(ValueFromRemainingArguments = $true)]
  [string[]] $Args
)

$ErrorActionPreference = "Stop"

$projectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$version = "9.4.1"
$distUrl = "https://services.gradle.org/distributions/gradle-$version-bin.zip"

$cacheRoot = Join-Path $projectRoot ".gradle-dist"
$distDir = Join-Path $cacheRoot "gradle-$version"
$zipPath = Join-Path $cacheRoot "gradle-$version-bin.zip"

if (!(Test-Path $distDir)) {
  New-Item -ItemType Directory -Force -Path $cacheRoot | Out-Null

  if (!(Test-Path $zipPath)) {
    Write-Host "Downloading Gradle $version..."
    Invoke-WebRequest -Uri $distUrl -OutFile $zipPath
  }

  Write-Host "Extracting Gradle $version..."
  Expand-Archive -Path $zipPath -DestinationPath $cacheRoot -Force
}

$gradleBat = Join-Path $distDir "bin\\gradle.bat"
Write-Host "Running: $gradleBat $Args"
& $gradleBat @Args

