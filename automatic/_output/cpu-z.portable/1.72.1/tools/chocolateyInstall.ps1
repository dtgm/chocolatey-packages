$packageName = 'cpu-z.portable'
$url = 'http://www.cpuid.com/medias/files/softwares/cpu-z/cpu-z_1.72.1-en.zip'
$checksum = '87e041255c2acf405419fabf851056ea9b2fea5b'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile32 = Join-Path $toolsDir "cpuz_x32.exe"
$installFile64 = Join-Path $toolsDir "cpuz_x64.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile32.gui") `
            -Value $null
Set-Content -Path ("$installFile64.gui") `
            -Value $null