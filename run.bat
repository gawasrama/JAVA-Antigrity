@echo off
set "BASE_DIR=%~dp0"
set "JAVA_HOME=%BASE_DIR%jdk-17.0.2"
set "CATALINA_HOME=%BASE_DIR%apache-tomcat-9.0.83"
set "CATALINA_BASE=%BASE_DIR%apache-tomcat-9.0.83"

REM Remove trailing backslash for Tomcat docBase
set "DOC_BASE=%BASE_DIR:~0,-1%"

if not exist "%CATALINA_HOME%\conf\Catalina\localhost" mkdir "%CATALINA_HOME%\conf\Catalina\localhost"
echo ^<?xml version="1.0" encoding="UTF-8"?^> > "%CATALINA_HOME%\conf\Catalina\localhost\ROOT.xml"
echo ^<Context docBase="%DOC_BASE%" reloadable="true" /^> >> "%CATALINA_HOME%\conf\Catalina\localhost\ROOT.xml"

echo ===================================================
echo   Starting Photography Booking System...
echo   JAVA_HOME is set to: %JAVA_HOME%
echo   Project Path is: %DOC_BASE%
echo ===================================================

call "%CATALINA_HOME%\bin\startup.bat"

echo.
echo Tomcat is starting in a new window!
echo Please wait a few seconds, then open your browser to:
echo http://localhost:8080/
echo.
pause
