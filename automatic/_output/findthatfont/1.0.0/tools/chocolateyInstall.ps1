$packageName = 'findthatfont'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'https://github.com/monkeyinmysoup/FindThatFont-/releases/download/1.0.0/findthatfont.exe'
$checksum = '6f9768dd77036ad20f15d8463b3e33f030d691d8'
$checksumType = 'sha1'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"