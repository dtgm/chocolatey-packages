$packageName = 'partitionwizard'
$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
$url = 'https://www.partitionwizard.com/download/pw10-free.exe'
$checksum = 'b09edaf7979459b1cc3be2f38f6c47c352443d31a81d774d24cb0d614407873a'
$checksumType = 'sha256'
$validExitCodes = @(0)

Write-Host "This package is not completely silent." -ForegroundColor "White"
Write-Host "The application will launch after installation." -ForegroundColor "White"

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"
