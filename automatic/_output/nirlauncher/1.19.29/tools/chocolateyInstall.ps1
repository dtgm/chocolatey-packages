$packageName = 'nirlauncher'
$url = 'http://download.nirsoft.net/nirsoft_package_1.19.29.zip'
$checksum = 'fe991b53f69e169198e4bcc7acdfe52b56fa7579'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "NirLauncher.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null