@echo off
setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.

set APP_BASE_NAME=%~n0

set DEFAULT_JVM_OPTS=-Xmx64m

set WRAPPER_JAR=%DIRNAME%gradle\wrapper\gradle-wrapper.jar

if not exist "%WRAPPER_JAR%" (
  echo Wrapper jar not found: "%WRAPPER_JAR%"
  echo Falling back to run-gradle.ps1...
  powershell -NoProfile -ExecutionPolicy Bypass -File "%DIRNAME%run-gradle.ps1" %*
  exit /b %ERRORLEVEL%
)

"%JAVA_HOME%\bin\java.exe" -version >nul 2>&1
if "%JAVA_HOME%"=="" (
  set JAVA_EXE=java
) else (
  set JAVA_EXE=%JAVA_HOME%\bin\java.exe
)

%JAVA_EXE% %DEFAULT_JVM_OPTS% -classpath "%WRAPPER_JAR%" org.gradle.wrapper.GradleWrapperMain %*
endlocal
