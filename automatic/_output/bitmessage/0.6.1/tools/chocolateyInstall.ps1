$packageName = 'bitmessage'
$url = 'https://github.com/Bitmessage/PyBitmessage/releases/download/v0.6.1/Bitmessage-0.6.1.exe'
$checksum = '20c89f87b0eb29d48263793896f8ba77e291fad903749b0355bb716cebcb2fdc'
$checksumType = 'sha256'
$url64 = 'https://github.com/Bitmessage/PyBitmessage/releases/download/v0.6.1/Bitmessage-0.6.1_64.exe'
$checksum64 = 'a46ab376888a05a0e1579e36629885bc72c249c7f661534cdfb6ba8b08297d2c'
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
