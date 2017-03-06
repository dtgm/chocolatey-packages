$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$url = 'http://www.sandboxie.com/attic/SandboxieInstall32-514.exe'
$checksum = 'b1bec13c177fcfefe11c5ba0ff668589549a6499'
$checksumType = 'sha1'
$url64 = 'http://www.sandboxie.com/attic/SandboxieInstall64-514.exe'
$checksum64 = '49641cdc70da094c73aff1321ef3522c91708776'
$checksumType64 = 'sha1'
$validExitCodes = @(0)
$silentArgs = '/S'
$reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                           -ErrorAction:SilentlyContinue `
          | Where-Object   { $_.DisplayName -like "$packageSearch*" }
if ($reg) { 
  $silentArgs += ' /upgrade'
} else {
  $silentArgs += ' /install'
}

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"