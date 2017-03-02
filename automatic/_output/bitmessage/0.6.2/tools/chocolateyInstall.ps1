$packageName = 'bitmessage'
$url = 'https://github.com/Bitmessage/PyBitmessage/releases/download/v0.6.2/Bitmessage_x86_0.6.2.exe'
$checksum = '85014672defb2b4385ef4ff2d42ded00a2f51922af95f27c77ef86ad25ebed03'
$checksumType = 'sha256'
$url64 = ''
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType64 "$checksumType64"
                      
Set-Content -Path ("$installFile.gui") `
            -Value $null  
