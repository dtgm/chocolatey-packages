$packageName = 'ultravnc'
$installerType = 'msi'
$url = 'http://support1.uvnc.com/download/1212/UltraVnc_1212_X86.msi'
$checksum = '035edabe97cbdec91cd330cc8445e9fa8d8393e9e1241bb444dfcc573d88219c'
$checksumType = 'sha256'
$url64 = 'http://support1.uvnc.com/download/1212/UltraVnc_1212_X64.msi'
$checksum64 = 'cdb12e1010b669695466e7e9de7831546dc82ee74a34083b6360d93c037ea03d'
$checksumType64 = 'sha256'
$silentArgs = '/quiet /qn /norestart'
$validExitCodes = @(0,3010)

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