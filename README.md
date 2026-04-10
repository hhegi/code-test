코스테스트 연습용 자바 프로젝트
===============================

이 폴더는 코딩 테스트(코스테스트) 연습 문제들을 풀기 위한 **자바 프로젝트 환경**입니다.  
Gradle 기반의 콘솔 애플리케이션 구조로 만들어져 있습니다.

## 요구사항

- Java 17 이상 (권장)
- PowerShell (Windows 기본)

## 초기 세팅 및 빌드

1. 프로젝트 위치로 이동

```bash
cd c:\git\code-test
```

2. Gradle 실행(래퍼 파일이 없을 수 있어 배포판을 자동 다운로드)

```bash
powershell .\run-gradle.ps1 build
```

3. 테스트 실행 (코테용 테스트 코드 작성 시)

```bash
powershell .\run-gradle.ps1 test
```

## 폴더 구조 (예정/기본)

- `src/main/java/` : 실제 문제 풀이 코드
- `src/test/java/` : JUnit 테스트 코드
- `build.gradle` : Gradle 빌드 설정
- `settings.gradle` : Gradle 프로젝트 설정

## 실행 예시

`Main` 클래스를 실행하는 예시는 다음과 같습니다.

```bash
powershell .\run-gradle.ps1 run
```

또는 IDE(CLI가 아니라 IntelliJ, VS Code 등)에서 `Main` 클래스를 직접 실행해도 됩니다.
