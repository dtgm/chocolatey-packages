$packageName = "{{PackageName}}"
$url = "{{DownloadUrl}}"
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$url64 = "{{DownloadUrlx64}}"
$checksum64 = '{{Checksumx64}}'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
try {
  $addStartMenuItem = (
  Get-Item $MyInvocation.MyCommand.Definition
  ).Directory.GetFiles("Install-ChocolateyStartMenuLink.ps1")[0]
  if (!(Get-Command "Install-ChocolateyStartMenuLink" -ErrorAction SilentlyContinue)) {
    Write-Debug @"
Using bundled Install-ChocolateyStartMenuLink @ $($addStartMenuItem.FullName)
"@
    . $addStartMenuItem.FullName
  }
Get-ChildItem $toolsDir\*.exe `
  | ForEach-Object { Install-ChocolateyStartMenuLink -TargetFilePath "$($_.FullName)" }
} catch {
  throw $_.Exception
}