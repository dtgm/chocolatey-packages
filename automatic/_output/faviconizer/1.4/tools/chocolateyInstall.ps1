$packageName = 'faviconizer'
$urlArray = @('http://sourceforge.net/projects/faviconizer/files/FavIconizer-1.4.exe/download', 'http://sourceforge.net/projects/faviconizer/files/FavIconizer64-1.4.exe/download')
$url = $urlArray[0]
$checksum = '75e45606b1c4f695c18cb828e7401e7d2c4ab101'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'cf02a1793378c6dde57d94e4dadc48466bfc6842'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "$url64" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType" `
                        -Checksum64 "$checksum64" `
                        -ChecksumType64 "$checksumType64"
  Set-Content -Path ("$installFile.gui") `
              -Value $null
} catch {
  throw $_.Exception
}