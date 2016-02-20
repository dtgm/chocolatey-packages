$packageName = 'sniffpass.install'
$installerType = 'exe'
$url = 'http://www.nirsoft.net/toolsdownload/sniffpass_setup.exe'
$checksum = 'd6a12e5ab14860334878dadb49b37bec2c323129'
$checksumType = 'sha1'
$silentArgs = '/S'
$validExitCodes = @(0)

$options = @{
  Headers = @{
    Referer = 'http://www.nirsoft.net/utils/password_sniffer.html';
  }
}

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -Url "$url" `
                          -SilentArgs "$silentArgs" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType" `
                          -Options $options