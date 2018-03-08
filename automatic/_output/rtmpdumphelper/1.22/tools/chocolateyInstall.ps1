$packageName = 'rtmpdumphelper'
$url = 'http://www.nirsoft.net/utils/rtmpdumphelper.zip'
$checksum = '78a76c871e8bbbaa84f7afc754c29f0fe30fff2271ce198be1ac92ec4c996c43'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/rtmpdumphelper-x64.zip'
$checksum64 = '205fd770852aee82f2db75e982f2ec3491c2f53f0c9f0285b478e92718da5a61'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "$url64" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType" `
                             -Checksum64 "$checksum64" `
                             -ChecksumType64 "$checksumType64"

Set-Content -Path ("$installFile.gui") `
            -Value $null