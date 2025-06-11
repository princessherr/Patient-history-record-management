@echo off
REM Script to run the Patient History Management application

REM Define the path to the JAR file
SET JAR_NAME=patient-history-management-1.0-SNAPSHOT.jar
SET JAR_PATH=target\%JAR_NAME%

REM Check if the JAR file exists
if not exist "%JAR_PATH%" (
    echo.
    echo JAR file not found: %JAR_PATH%
    echo Please make sure the JAR file is in the 'target' directory.
    goto :eof
)

echo.
echo Running the application...
java -jar "%JAR_PATH%"

:eof
echo.
echo Script finished.
