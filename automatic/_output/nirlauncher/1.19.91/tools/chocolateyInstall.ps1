$packageName = 'nirlauncher'
$url = 'http://download.nirsoft.net/nirsoft_package_1.19.91.zip'
$checksum = '502e0d6bc4be341b399d90ce156b8a4241c7f2f1'
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
