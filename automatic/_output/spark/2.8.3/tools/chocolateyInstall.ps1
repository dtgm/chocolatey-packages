$packageName = 'spark'
$installerType = 'exe'
$silentArgs = '-q'
$url = 'https://github-cloud.s3.amazonaws.com/releases/14648981/c6c66380-e624-11e6-9b41-0b764fe0cac0.exe?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAISTNZFOVBIJMK3TQ%2F20170129%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20170129T232251Z&X-Amz-Expires=300&X-Amz-Signature=2ab87759b1ebdfccf706fef286c28f5c530b8fade304ae2ea5c9fd6a8ee07273&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B filename%3Dspark_2_8_3.exe&response-content-type=application%2Foctet-stream'
$checksum = 'c988c789311dcb53d13d1c9713f34dd4'
$checksumType = 'md5'
$validExitCodes = @(0)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"