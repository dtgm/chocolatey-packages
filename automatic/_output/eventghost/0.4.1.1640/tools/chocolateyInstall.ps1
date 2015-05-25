$packageName = 'eventghost' 
$installerType = 'exe'
$url = 'http://www.eventghost.org/downloads/EventGhost_0.4.1.r1640_Setup.exe' 
$url64 = $url
$silentArgs = '/sp- /verysilent /norestart'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
