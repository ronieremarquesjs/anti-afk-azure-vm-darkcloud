@echo off
:loop
rem Fazendo algo irrelevante
echo "Processando..."
powershell -command "$x = 100; $y = 100; [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)"
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{SCROLLLOCK}')"
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{F4}')"
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{SHIFT}')"

powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('^{t}')"
timeout /t 1 /nobreak
powershell -command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('github.com/ronieremarquesjs')"
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('{ENTER}')"
powershell -command "$wsh = New-Object -ComObject WScript.Shell; $wsh.SendKeys('^{w}')"
goto loop