$packageName = 'cpu-z.portable'
$url = 'http://download.cpuid.com/cpu-z/cpu-z_1.78-en.zip'
$checksum = '10d36207cfc2aadec166e305656bbf4795e67ec3ef7b9fe7c913d52b59ba0c0e'
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