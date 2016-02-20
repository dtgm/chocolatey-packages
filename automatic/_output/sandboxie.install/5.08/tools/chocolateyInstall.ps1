$packageName = 'sandboxie.install'
$packageSearch = 'sandboxie'
$installerType = 'exe'
$url = 'http://www.sandboxie.com/attic/SandboxieInstall32-508.exe'
$checksum = '0682a65b5338037f57e8477b24bfb74e2fb7d22b'
$checksumType = 'sha1'
$url64 = 'http://www.sandboxie.com/attic/SandboxieInstall64-508.exe'
$checksum64 = '16546f9931074bf877783b175f856b24f12b5f60'
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