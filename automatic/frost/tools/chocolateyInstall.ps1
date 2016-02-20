$packageName = '{{PackageName}}'
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unzDir = Join-Path $toolsDir $packageName
$batFile = Join-Path $unzDir "frost.bat"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

(Get-Content $batFile) -replace '-jar frost.jar', '-jar %~dp0frost.jar' | Set-Content $batFile

Install-BinFile -Name $packageName `
                -Path $batFile