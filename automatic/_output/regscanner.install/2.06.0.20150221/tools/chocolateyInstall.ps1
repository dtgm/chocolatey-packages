$packageName = 'regscanner.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/utils/regscanner_setup.exe'
$checksum = '79dc7bf27c23289e525e85f9ad72ad2182e34d51'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage -PackageName "$packageName" -FileType "$installerType" -Url "$url" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
