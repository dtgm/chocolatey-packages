$packageName = 'mozillahistoryview'
$url = 'http://www.nirsoft.net/utils/mozillahistoryview.zip'
$checksum = 'ee443caa9deadb7ff286c9a544650141074bbf36bd6a8d7d72c34fbe4683fc4f'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null