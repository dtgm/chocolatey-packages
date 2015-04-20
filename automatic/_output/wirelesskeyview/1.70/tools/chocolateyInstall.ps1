$packageName = 'wirelesskeyview'
$url = 'http://www.nirsoft.net/toolsdownload/wirelesskeyview.zip'
$checksum = '63f80a9454e72a8256125c3c6787bd25042924a9'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `

Set-Content -Path ("$installFile.gui") `
            -Value $null