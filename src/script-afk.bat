@echo off
:loop
rem Fazendo algo irrelevante
echo "Processando..."
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{SCROLLLOCK}')"
rem Esperando
timeout /t 60 /nobreak
goto loop