REM Starting the IE8 selenium node...
set resDir="C:\vagrant\resources"

REM java -jar %resDir%\selenium-server-standalone-2.46.0.jar -role node -nodeConfig %resDir%\node.json

start "nodeRunner" java -jar %resDir%\selenium-server-standalone-2.46.0.jar -role node ^
-browser "browserName=internet explorer" -host %1 -hubHost %2 ^
-Dwebdriver.ie.driver="C:\vagrant\resources\IEDriverServer.exe"
