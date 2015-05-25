$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$url = 'http://www.sandboxie.com/attic/SandboxieInstall32-416.exe'
$checksum = 'c2a4c95087d8382a4c37c18497c1e277bac41b7a'
$checksumType = 'sha1'
$url64 = 'http://www.sandboxie.com/attic/SandboxieInstall64-416.exe'
$checksum64 = '8c190f619afa4f3e0af425c5e63877e55352194e'
$checksumType64 = 'sha1'
$validExitCodes = @(0)

if ((Test-Path $Env:ProgramFiles\$packageSearch*) -Or (Test-Path ${Env:ProgramFiles(x86)}\$packageSearch*)) { 
  $silentArgs = '/upgrade /S'
} else {
  $silentArgs = '/install /S'
}
Install-ChocolateyPackage -PackageName "$packageName" -InstallerType "$installerType" -Url "$url" -Url64bit "$url64" -SilentArgs "$silentArgs" -ValidExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType" -Checksum64 "$checksum64" -ChecksumType64 "$checksumType64"