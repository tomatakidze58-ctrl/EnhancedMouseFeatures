@echo off
setlocal
cd /d "%~dp0"
call gradlew.bat build --no-daemon
if errorlevel 1 (
    echo Build failed. Check that Java JDK 25 is installed.
    pause
    exit /b 1
)
echo Build complete. The mod is in fabric\build\libs.
echo Install the regular .jar, not the -sources.jar.
pause
