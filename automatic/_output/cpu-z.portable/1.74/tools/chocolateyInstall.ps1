$packageName = 'cpu-z.portable'
$url = 'http://download.cpuid.com/cpu-z/cpu-z_1.74-en.zip'
$checksum = '481012bb1c462f1074bb1b7a8ed3f34b7fd4f63c'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile32 = Join-Path $toolsDir "cpuz_x32.exe"
$installFile64 = Join-Path $toolsDir "cpuz_x64.exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Set-Content -Path ("$installFile32.gui") `
            -Value $null
Set-Content -Path ("$installFile64.gui") `
            -Value $null