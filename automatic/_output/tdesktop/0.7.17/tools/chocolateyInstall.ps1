$packageName = 'tdesktop'
$installerType = 'exe'
$url = 'https://updates.tdesktop.com/tsetup/tsetup.0.7.17.exe'
$checksum = '1480361bfdb484673e3c6d71038cdf3c25c1e840'
$checksumType = 'sha1'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
