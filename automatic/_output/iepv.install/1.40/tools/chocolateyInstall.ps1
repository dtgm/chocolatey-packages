$packageName = 'iepv.install'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$url = 'http://www.nirsoft.net/toolsdownload/iepv_setup.exe'
$checksum = '95f6b8569672a50243a1445793ad3424f9c03ff09e56373c7447100e3858b3e1'
$checksumType = 'sha256'

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$installFile = Join-Path $tempDir "$($packageName).$($installerType)"

$referer = "http://www.nirsoft.net/utils/internet_explorer_password.html"
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