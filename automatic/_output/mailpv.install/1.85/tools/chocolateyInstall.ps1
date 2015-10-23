$packageName = 'mailpv.install'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$url = 'http://www.nirsoft.net/toolsdownload/mailpv_setup.exe'
$checksum = '487c9385dd8deaa4e4a557bbd05200328ab9b576'
$checksumType = 'sha1'

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$installFile = Join-Path $tempDir "$($packageName).$($installerType)"

$referer = "http://www.nirsoft.net/utils/mailpv.html"
$wc = New-Object System.Net.WebClient
$wc.Headers.Add("Referer", $referer)
$wc.DownloadFile($url, $installFile)

Get-ChecksumValid -File "$installFile" `
                  -Checksum "$checksum" `
                  -ChecksumType "$checksumType"

Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile" `
                                 -ValidExitCodes $validExitCodes