$packageName = 'apktool'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
<#
$url = 'https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat'
$checksum = '71860a8eeff034be65f27e2304ccf45368b76704'
$checksumType = 'sha1'
Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$toolsDir" `
                      -Url "$bat" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
#>
$url = 'https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.1.1.jar'
$checksum = 'ada209f92bfe6d987e422b9a8a0bad342c8391e8'
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"