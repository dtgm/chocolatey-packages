# This template is intended to be used with Chocolatey and Ketarin to automatically package and publish nuget-based packages for distribution with chocolatey.
# Please remove comments before pushing.
### sed -ie '/^\s*#.*$/d' -ie 's_\s*#.*$__g' [:alpha:]*/tools/chocolateyInstall.ps1 && unix2dos [:alpha:]*/tools/chocolateyInstall.ps1
# Please maintain compatibility with Posh v2.
$packageName = '{{PackageName}}'
$installerType = 'msi'
$silentArgs = '/qn /norestart'  # https://msdn.microsoft.com/en-us/library/aa372024(v=vs.85).aspx
$url = '{{DownloadUrl}}'  # if url is being passed as an array, omit quotes
$checksum = '{{Checksum}}'
$checksumType = 'sha1'  # md5 or sha1
$url64 = '{{DownloadUrlx64}}'
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'  # md5 or sha1
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"