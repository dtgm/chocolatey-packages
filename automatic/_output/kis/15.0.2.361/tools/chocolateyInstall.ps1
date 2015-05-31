$packageName = 'kis'
$installerType = 'exe'
$instLog = Join-Path $env:Temp kis-$(Get-Date -Format yyyyMMddHHmm)
$instLog = $instLog + '.log'
$silentArgs = "/s /t$instLog /g1"
$url = 'http://products.kaspersky-labs.com/english/homeuser/kis2015//kis15.0.2.361en.exe'
$checksum = 'ee9d64c30b2234b02532d2d2f200d383598dc674'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"