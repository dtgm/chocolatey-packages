$packageName = 'jcpicker'
$url = 'http://annystudio.com/software/colorpicker/jcpicker.zip'
$checksum = 'f420769563e3585bc554903357652eafe8de1a6e43777b17d4d6fa1c723f6734'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile.gui") `
            -Value $null