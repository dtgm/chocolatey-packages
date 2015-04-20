$packageName = 'regextester'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://sourceforge.net/projects/regextester/files/RegExTester%20Binaries/3.2.0.0/RegExTester_3.2.0.0_bin.zip/download'
$checksum = '7b46071d0a9b65ecfc830dc825e9a88a703154c5'
$checksumType = 'sha1'

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

$installFile = Join-Path $toolsDir "RegExTester.exe"

Set-Content -Path ("$installFile.gui") `
            -Value $null