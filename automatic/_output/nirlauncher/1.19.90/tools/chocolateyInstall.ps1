$packageName = 'nirlauncher'
$url = 'http://download.nirsoft.net/nirsoft_package_1.19.90.zip'
$checksum = '74dbb6f03d1e8ac53d2938babc5c1c3a45a9ba20'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

$chocoTempDir = Join-Path $Env:Temp "$packageName"
if (![System.IO.Directory]::Exists($chocoTempDir)) {[System.IO.Directory]::CreateDirectory($chocoTempDir)}
$zipFile = Join-Path $chocoTempDir "$($packageName).zip"

$referer = "http://launcher.nirsoft.net/download.html"
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

Get-ChildItem -Filter "*.exe" -Recurse -Path "$toolsdir\*" -Exclude @("nircmd.exe", "nircmdc.exe") | %{ 
    New-Item ($_.FullName + ".gui") -ErrorAction SilentlyContinue
}
