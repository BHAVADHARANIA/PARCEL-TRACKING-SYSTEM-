@echo off
cd /d "%~dp0"
if exist out rmdir /s /q out
mkdir out
javac -d out src\main\java\com\parceltracker\model\*.java src\main\java\com\parceltracker\auth\*.java src\main\java\com\parceltracker\service\*.java src\main\java\com\parceltracker\sim\*.java src\main\java\com\parceltracker\ui\*.java src\main\java\com\parceltracker\web\*.java
if errorlevel 1 (
  echo.
  echo Compile failed. Make sure a JDK ^(not just a JRE^) is installed: run  javac -version
  pause
  exit /b 1
)
echo.
echo Starting Parcel Tracker... your browser will open at http://localhost:8080
echo Keep this window open. Close it to stop the app.
java -cp out com.parceltracker.web.WebApp
pause
