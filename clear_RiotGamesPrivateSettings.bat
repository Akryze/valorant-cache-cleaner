@echo off
cls

echo Closing Riot, Valorant and Vanguard processes...
taskkill /F /T /IM "RiotClientServices.exe" 2>nul
taskkill /F /T /IM "Riot Client.exe" 2>nul
taskkill /F /T /IM "RiotClientUx.exe" 2>nul
taskkill /F /T /IM "VALORANT-Win64-Shipping.exe" 2>nul
taskkill /F /T /IM "VALORANT.exe" 2>nul
taskkill /F /T /IM "vgtray.exe" 2>nul

timeout /t 1 /nobreak > nul

set "TARGET_FILE=%LOCALAPPDATA%\Riot Games\VALORANT\Data\RiotGamesPrivateSettings.yaml"

echo.
if not exist "%TARGET_FILE%" (
    echo Target file not found: %TARGET_FILE%
    goto end
)

echo Target file: %TARGET_FILE%
echo.
choice /C YN /M "Delete network cache file (RiotGamesPrivateSettings.yaml)?"

if errorlevel 2 goto cancel
if errorlevel 1 goto delete

:delete
del /f /q "%TARGET_FILE%"
if not exist "%TARGET_FILE%" (
    echo.
    echo [SUCCESS] Cache file removed successfully!
) else (
    echo.
    echo [ERROR] Failed to delete file. Run script as Administrator.
)
goto end

:cancel
echo.
echo Operation cancelled.

:end
echo.
pause