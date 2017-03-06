$packageName = 'webbrowserpassview.install'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$url = 'http://www.nirsoft.net/toolsdownload/webbrowserpassview_setup.exe'
$checksum = 'a10cc1394a1dab04bedf3b156d7bf5e61ece44296163256cf3af797f0803f53d'
$checksumType = 'sha256'

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$installFile = Join-Path $tempDir "$($packageName).$($installerType)"

$referer = "http://www.nirsoft.net/utils/web_browser_password.html"
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