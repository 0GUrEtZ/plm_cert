@echo off
set CERT_URL=https://github.com/0GUrEtZ/plm_cert/raw/refs/heads/main/roots.pem
set CERT_FILE=%TEMP%\roots.pem
powershell -Command "Invoke-WebRequest -Uri '%CERT_URL%' -OutFile '%CERT_FILE%' -UseBasicParsing"
certutil -addstore -f Root "%CERT_FILE%"
pause