$packageName = 'multiavchd'
$installerType = 'exe'
$silentArgs = '/S'
$url = 'http://www.videohelp.com/download/multiAVCHD_4.1.exe'
$checksum = 'bf357c9ff2012a6040438ea24349b82fafbfcacd368e99643bcc5d8198a6973e'
$checksumType = 'sha256'
$validExitCodes = @(0)

$installPath = Join-Path (Get-BinRoot) $packageName
$silentArgs = $silentArgs + "/D=`"$installPath`""

Install-ChocolateyPackage -PackageName $packageName `
                          -FileType $installerType `
                          -SilentArgs $silentArgs `
                          -Url $url `
                          -ValidExitCodes $validExitCodes `
                          -Checksum $checksum `
                          -ChecksumType $checksumType

Install-ChocolateyPath $installPath 'User'