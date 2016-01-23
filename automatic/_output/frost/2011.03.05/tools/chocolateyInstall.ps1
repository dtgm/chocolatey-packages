$packageName = 'frost'
$url = 'http://sourceforge.net/projects/jtcfrost/files/frost/2011-03-05/frost_2011-03-05.zip/download'
$checksum = 'caa34f3856d96e725ceb687efc0c507065151aa4'
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