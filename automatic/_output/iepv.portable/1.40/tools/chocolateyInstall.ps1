$packageName = 'iepv.portable'
$url = 'http://www.nirsoft.net/toolsdownload/iepv.zip'
$checksum = '5fb60debcada978e60b1d1c1a6ff062a76f6893cc9a965543eae8e76f1a9cade'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "iepv.exe"

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipFile = Join-Path $tempDir "$($packageName).zip"

$referer = "http://www.nirsoft.net/utils/"
$wc = New-Object System.Net.WebClient
$wc.Headers.Add("Referer", $referer)
$wc.DownloadFile($url, $zipFile)

Get-ChecksumValid -File "$zipFile" `
                  -Checksum "$checksum" `
                  -ChecksumType "$checksumType"

Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                    -Destination "$toolsDir" `
                    -PackageName "$packageName"

Set-Content -Path ("$installFile.gui") `
            -Value $null