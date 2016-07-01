$packageName = 'speedfan'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.almico.com/speedfan452.exe'
$checksum = 'e2ccb3c0d23f0d04ee8057f5ce3861eea952fb20694c1656c9805b1d4cd922ff'
$checksumType = 'sha256'
$validExitCodes = @(0)

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$installFile = Join-Path $tempDir "$($packageName)Install.$installerType"

$referer = "http://www.almico.com/sfdownload.php"
$wc = New-Object System.Net.WebClient
$wc.Headers.Add("Referer", $referer)
$wc.DownloadFile($url, $installFile)

Get-ChecksumValid -File "$installFile" `
                  -Checksum "$checksum" `
                  -ChecksumType "$checksumType"

Install-ChocolateyInstallPackage -PackageName $packageName `
                                    -FileType $installerType `
                                    -SilentArgs $silentArgs `
                                    -File $installFile `
                                    -ValidExitCodes $validExitCodes