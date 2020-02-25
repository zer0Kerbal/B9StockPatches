
@echo off

rem Put the following text into the Post-build event command line:
rem without the "rem":

rem start /D C:\KSP_DEV\Workspace\ODFCr\ /WAIT deploy.bat  $(TargetDir) $(TargetFileName)
rem
rem if $(ConfigurationName) == Release start /D C:\KSP_DEV\Workspace\ODFCr\ /WAIT buildRelease.bat $(TargetDir) $(TargetFileName)


rem Set variables here

rem H is the destination game folder
rem GAMEDIR is the name of the mod folder (usually the mod name)
rem GAMEDATA is the name of the local GameData
rem VERSIONFILE is the name of the version file, usually the same as GAMEDATA,
rem    but not always
rem LICENSE is the license file
rem README is the readme file

set GAMEDIR=\B9StockPatches
set GAMEDATA="GameData\"
rem set SUBDIR="KermangeddonIndustries\"
set VERSIONFILE=%GAMEDIR%.version
set LICENSE="License.txt"
Set LICENSETEXT="MIT.txt"
set README="ReadMe.md"
set JQ=C:\ProgramData\chocolatey\lib\jq\tools\jq.exe

set RELEASEDIR=C:\KSP_DEV\Releases
set ZIP="c:\Program Files\7-zip\7z.exe"

rem Copy files to GameData locations

copy /Y "%1%2" "%GAMEDATA%\%GAMEDIR%\Plugins"
copy /Y %GAMEDIR%.version %GAMEDATA%%SUBDIR%%GAMEDIR%
copy /Y Changelog.cfg %GAMEDATA%\%SUBDIR%%GAMEDIR%

if "%LICENSE%" NEQ "" copy /y  %LICENSE% %GAMEDATA%\%SUBDIR%\%GAMEDIR%
if "%LICENSETEXT%" NEQ "" copy /y  %LICENSETEXT% %GAMEDATA%\%SUBDIR%\%GAMEDIR%
if "%README%" NEQ "" copy /Y %README% %GAMEDATA%\%SUBDIR%\%GAMEDIR%

rem Get Version info

copy %VERSIONFILE% tmp.version
set VERSIONFILE=tmp.version
rem The following requires the JQ program, available here: https://stedolan.github.io/jq/download/
%JQ% ".VERSION.MAJOR" %VERSIONFILE% >tmpfile
set /P major=<tmpfile

%JQ% ".VERSION.MINOR" %VERSIONFILE% >tmpfile
set /P minor=<tmpfile

%JQ% ".VERSION.PATCH" %VERSIONFILE% >tmpfile
set /P patch=<tmpfile

%JQ% ".VERSION.BUILD"  %VERSIONFILE% >tmpfile
set /P build=<tmpfile
del tmpfile
del tmp.version
set VERSION=%major%.%minor%.%patch%
if "%build%" NEQ "0"  set VERSION=%VERSION%.%build%

echo Version:  %VERSION%


rem Build the zip FILE
cd %GAMEDATA%\..

set FILE="%RELEASEDIR%\%GAMEDIR%-%VERSION%.zip"
IF EXIST %FILE% del /F %FILE%
%ZIP% a -tzip %FILE% GameData

pause
