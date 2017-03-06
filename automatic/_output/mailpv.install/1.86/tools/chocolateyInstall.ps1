$packageName = 'mailpv.install'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$url = 'http://www.nirsoft.net/toolsdownload/mailpv_setup.exe'
$checksum = '7a59cb96ec3ee84ac84f5cfe9b92ca1f357a5af6677e4074436cbfea74a1a0f0'
$checksumType = 'sha256'

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