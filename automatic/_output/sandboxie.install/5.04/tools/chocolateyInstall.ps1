$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$url = 'http://www.sandboxie.com/attic/SandboxieInstall32-504.exe'
$checksum = '1479bf0d112354b84c41ab60b595d5a5832a4a76'
$checksumType = 'sha1'
$url64 = 'http://www.sandboxie.com/attic/SandboxieInstall64-504.exe'
$checksum64 = '935cb827dc79201a4a3344c9baa0192032c33c5e'
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