$packageName = 'nunit.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'System.Collections.Hashtable[url]'
$checksum = 'System.Collections.Hashtable[checksum]'
$checksumType = 'md5'
$validExitCodes = @(0)
Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"