$packageName = 'cpu-z.portable'
$url = 'http://download.cpuid.com/cpu-z/cpu-z_1.77-en.zip'
$checksum = 'd41a7ea019b18e44d3e97b72cf78536ef64a883bc6bedbf9a636a33f828da0dd'
$checksumType = 'sha256'
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