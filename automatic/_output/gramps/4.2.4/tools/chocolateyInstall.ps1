$packageName = 'gramps'
$installerType = 'exe'
$silentArgs = '/S'
$urlArray = @('https://sourceforge.net/projects/gramps/files/Stable/4.2.4/GrampsAIO-4.2.4-1_win32.exe', 'https://sourceforge.net/projects/gramps/files/Stable/4.2.4/GrampsAIO-4.2.4-1_win64.exe')
$url = $urlArray[0]
$checksum = 'ea822ac3d203ef27b4edc4cecf7fc36168f7e9ee3361b8d5c2f1aff7665189f8'
$checksumType = 'sha256'
$url64 = $urlArray[1]
$checksum64 = '4675cf0ed07b73b67a823b4caf5d17ca36be291eea080dc380b96c5af46e444d'
$checksumType64 = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -Url64bit "$url64" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Checksum64 "$checksum64" `
                          -ChecksumType64 "$checksumType64"