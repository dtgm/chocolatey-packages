$packageName = 'dotpeek'
$url = 'http://download.jetbrains.com/resharper/dotPeek32_1.4.2.exe'
$checksum = '0d22744e0f69e680a24971a02e09063cc3cceb8b'
$checksumType = 'sha1'
$url64 = 'http://download.jetbrains.com/resharper/dotPeek64_1.4.2.exe'
$checksum64 = '2996798c81f02fd7941fa42ffb939af9f2844e8f'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

$optPath = "$env:AppData\JetBrains\Shared\vAny"
$optFile = "GlobalSettingsStorage.DotSettings"
 mkdir -f $optPath | out-null
@"
<wpf:ResourceDictionary xml:space="preserve" xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml" xmlns:s="clr-namespace:System;assembly=mscorlib" xmlns:ss="urn:shemas-jetbrains-com:settings-storage-xaml" xmlns:wpf="http://schemas.microsoft.com/winfx/2006/xaml/presentation">
	<s:Boolean x:Key="/Default/DotPeek/DotPeekLicenseAgreement/Accepted/@EntryValue">True</s:Boolean>
"@ > $optPath\$optFile

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Url64bit "$url64" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType" `
                      -Checksum64 "$checksum64" `
                      -ChecksumType64 "$checksumType64"

# create an empty sidecar metadata file for closed-source shimgen.exe to designate gui
Set-Content -Path ("$installFile.gui") `
            -Value $null