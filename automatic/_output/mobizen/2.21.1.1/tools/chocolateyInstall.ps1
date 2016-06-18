$packageName = 'mobizen'
$installerType = 'exe'
$silentArgs = '/S /v/qn'
$url = 'https://download.mobizen.com/download/mobizen.exe'
$checksum = 'a80320a79823da215c34849d71cf719537d55ab7fd832f597ae9dfa73e8fa74e'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"