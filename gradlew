#!/usr/bin/env sh

DIRNAME=$(dirname "$0")

WRAPPER_JAR="$DIRNAME/gradle/wrapper/gradle-wrapper.jar"
WRAPPER_PROPERTIES="$DIRNAME/gradle/wrapper/gradle-wrapper.properties"

if [ ! -f "$WRAPPER_JAR" ]; then
  echo "Wrapper jar not found: $WRAPPER_JAR" >&2
  exit 1
fi

JAVA_EXE="${JAVA_HOME:+$JAVA_HOME/bin/}java"
if [ -z "$JAVA_EXE" ]; then
  JAVA_EXE=java
fi

exec "$JAVA_EXE" -Xmx64m -classpath "$WRAPPER_JAR" org.gradle.wrapper.GradleWrapperMain "$@"
