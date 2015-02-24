$packageName = 'freearc.install'
$installerType = 'exe'
$url = 'http://freearc.org/download/0.666/FreeArc-0.666-win32.exe'
$checksum = '2b482a5834c30cda2c2c830defd3da88d4e24de0'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" -InstallerType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
