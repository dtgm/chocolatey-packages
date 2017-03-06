$packageName = 'wirelesskeyview'
$url = 'http://www.nirsoft.net/toolsdownload/wirelesskeyview.zip'
$checksum = '{checksum}'
$checksumType = 'sha1'
$url64 = 'http://www.nirsoft.net/toolsdownload/wirelesskeyview-x64.zip'
$checksum64 = '{checksumx64}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

$chocTempDir = Join-Path $Env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
$zipFile = Join-Path $tempDir "$($packageName).zip"

$url32bit = $url
$checksum32 = $checksum
$checksumType32 = $checksumType
$bitWidth = 32
if (Get-ProcessorBits 64) {
  $bitWidth = 64
}
Write-Debug "CPU is $bitWidth bit"

$bitPackage = 32
if ($bitWidth -eq 64 -and $url64 -ne $null -and $url64 -ne '') {
  Write-Debug "Setting url to '$url64' and bitPackage to $bitWidth"
  $bitPackage = $bitWidth
  $url = $url64
  # only set if urls are different
  if ($url32bit -ne $url64) {
    $checksum = $checksum64
  }

  $checksumType = $checksumType64
}

$fileDirectory = $([System.IO.Path]::GetDirectoryName($zipFile))
if (!(Test-Path($fileDirectory))) {
  [System.IO.Directory]::CreateDirectory($fileDirectory) | Out-Null  
}

$forceX86 = $env:chocolateyForceX86
if ($forceX86) {
  Write-Debug "User specified -x86 so forcing 32 bit"
  $bitPackage = 32
  $url = $url32bit
  $checksum =  $checksum32
  $checksumType = $checksumType32
}

$referer = "http://www.nirsoft.net/utils/"
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