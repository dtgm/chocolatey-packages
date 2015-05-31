$packageName = 'dumo'
$installerType = 'EXE'
$url = 'http://www.kcsoftwares.com/files/dumo_lite.exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#Necessary by now
Remove-Item "$Home\Desktop\Clean computer - KCleaner.URL"
