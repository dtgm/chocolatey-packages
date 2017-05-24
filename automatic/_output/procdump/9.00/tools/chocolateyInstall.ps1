$packageName = 'procdump'
$url = 'https://download.sysinternals.com/files/Procdump.zip'
$checksum = '9e089b3f25a85c58f901094e4126412bbef480bd7baef2a9039bdef328bf5baa'
$checksumType = 'sha256'
$url64 = "$url"
$checksum64 = "$checksum"
$checksumType64 = "checksumType"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"
Write-Verbose "Accepting license..."
$regRoot = 'HKCU:\Software\Sysinternals'
$regPkg = 'ProcDump'
$regPath = Join-Path $regRoot $regPkg
if (!(Test-Path $regRoot)) {New-Item -Path "$regRoot"}
if (!(Test-Path $regPath)) {New-Item -Path "$regRoot" -Name "$regPkg"}
Set-ItemProperty -Path "$regPath" -Name EulaAccepted -Value 1
if ((Get-ItemProperty -Path "$regPath").EulaAccepted -ne 1) {
  throw "Failed setting registry value."
}