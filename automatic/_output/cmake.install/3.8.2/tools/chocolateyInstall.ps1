$packageName = 'cmake.install'
$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'
$url = 'http://cmake.org/files/v3.8/cmake-3.8.2-win64-x64.msi'
$checksum = '572cc86b3a50a2aa600ad02daffb4f454b5f26d4b7cd2f606fb263d5e5b39de9'
$checksumType = 'sha256'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"