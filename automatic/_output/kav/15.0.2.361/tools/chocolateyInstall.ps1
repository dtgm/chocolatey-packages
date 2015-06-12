$packageName = 'kav'
$installerType = 'exe'
$instLog = Join-Path $env:Temp kis-$(Get-Date -Format yyyyMMddHHmm)
$instLog = $instLog + '.log'
$silentArgs = "/s /t$instLog /g1"
$url = 'http://products.kaspersky-labs.com/english/homeuser/kav2015//kav15.0.2.361en.exe'
$checksum = 'dbf2fcc1dc0af4fa12c9fa5109215b242956c921'
$checksumType = 'sha1'
$validExitCodes = @(0,3010)

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"