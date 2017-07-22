$packageName = 'chromecacheview'
$url = 'http://www.nirsoft.net/utils/chromecacheview.zip'
$checksum = '27e31189eb8cf01d8a0001398720f42663cc1fa04509ee2d691dac787e8920e8'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null