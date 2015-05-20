$packageName = 'speedfan'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.almico.com/speedfan451.exe'
$checksum = 'd409c01228a758cad498c86f68aafc13a4a83eb3'
$checksumType = 'sha1'
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