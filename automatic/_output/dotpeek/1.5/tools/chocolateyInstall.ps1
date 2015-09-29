$packageName = 'dotpeek'
$url = 'http://download.jetbrains.com/resharper/dotPeek32_1.5.exe'
$checksum = '3ec0e08ef3d81697056004c26009020aa562b6ec'
$checksumType = 'sha1'
$url64 = 'http://download.jetbrains.com/resharper/dotPeek64_1.5.exe'
$checksum64 = '304ae542696866432a9882cb1500ab54a3b8d8bc'
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