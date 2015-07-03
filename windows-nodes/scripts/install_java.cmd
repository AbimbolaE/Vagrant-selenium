
cd C:\vagrant\resources

REM Installing Java...

start /w jre-8u45-windows-i586.exe /s

REM Adding environment variable for Java...

setx JAVA_HOME "C:\Program Files\Java\jre1.8.0_45" /M
setx PATH "%PATH%;%%JAVA_HOME%%\bin" /M

REM Rebooting windows...
shutdown -r -t 1