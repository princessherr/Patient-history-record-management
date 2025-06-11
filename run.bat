@echo off
REM Script to build and run the Patient History Management application

REM Set the project directory (optional, if script is not in the project root)
REM SET PROJECT_DIR=%~dp0

REM Navigate to the project directory if MAVEN_HOME is set and mvn is in PATH
REM If you have Maven installed and configured in your PATH, these lines are sufficient.

echo Building the project with Maven...
call mvn clean package

REM Check if the build was successful
if errorlevel 1 (
    echo.
    echo Maven build failed.
    goto :eof
)

echo.
echo Build successful.

REM Define the path to the JAR file
REM The JAR name will be <artifactId>-<version>.jar as defined in pom.xml
SET JAR_NAME=patient-history-management-1.0-SNAPSHOT.jar
SET JAR_PATH=target\%JAR_NAME%

REM Check if the JAR file exists
if not exist "%JAR_PATH%" (
    echo.
    echo JAR file not found: %JAR_PATH%
    echo Make sure the artifactId and version in pom.xml match the JAR_NAME variable.
    goto :eof
)

echo.
echo Running the application...
java -jar "%JAR_PATH%"

:eof
echo.
echo Script finished.
