$packageName = 'wifiinfoview'
$url = 'http://www.nirsoft.net/utils/wifiinfoview.zip'
$checksum = '47f7c7301449f6e9a498e3c24263d8479163c2ec16311d566dd57863d9693abf'
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