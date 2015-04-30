$packageName = 'pstpassword.install'
$installerType = 'exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$url = 'http://www.nirsoft.net/toolsdownload/pstpassword_setup.exe'
$checksum = 'd94ce02ed02bce5442d11b220fe3713a71ca351f'
$checksumType = 'sha1'

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir)}
$installFile = Join-Path $tempDir "$($packageName).$($installerType)"

$referer = "http://www.nirsoft.net/utils/pst_password.html"
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