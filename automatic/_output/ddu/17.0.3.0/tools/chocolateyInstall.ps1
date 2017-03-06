$packageName = 'ddu'
$url = 'http://www.wagnardmobile.com/DDU/download/DDU%20v17.0.3.0.exe'
$checksum = '473c8c67d71f31358561143fd32161b4e526f28d21138b71911c63f4c0103ccd'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "Display Driver Uninstaller.exe"

# 0.9.7: custom headers not supported in 1st tier api helper functions
# thusly, require more setup to use deeper, 2nd tier helper functions
# 0.9.10: revisit: https://github.com/chocolatey/choco/issues/332
$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$zipFile = Join-Path $tempDir "$($packageName)Install.zip"
$referer = 'http://www.wagnardmobile.com/forums/viewtopic.php?f=5'
$wc = New-Object System.Net.WebClient
$wc.Headers.Add("Referer", $referer)
$wc.DownloadFile($url, $zipFile)

Get-ChecksumValid -File "$zipFile" `
                  -Checksum "$checksum" `
                  -ChecksumType "$checksumType"
                  
Get-ChocolateyUnzip -FileFullPath "$zipFile" `
                    -Destination "$toolsDir" `
                    -PackageName "$packageName"

# create sidecar file for shimgen
Set-Content -Path ("$installFile.gui") `
            -Value $null
