$packageName = 'zbar'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://sourceforge.net/projects/zbar/files/zbar/0.10/zbar-0.10-setup.exe/download'
$checksum = '13e66ac88461e4925ba178ff372d4c4f6d330061'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

$regObj = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                           -ErrorAction:SilentlyContinue `
          | Where-Object { $_.DisplayName -like "ZBar Bar Code Reader" }
$addPath = $regObj.InstallLocation.Replace('"','')
Install-ChocolateyPath (Join-Path $addPath 'bin')