$packageName = 'outlookaddressbookview'
$url = 'http://www.nirsoft.net/utils/outlookaddressbookview.zip'
$checksum = '473f4eec8c3b86222710a9983c76a8782783fb63d7fa8bee589c3d726b3ba465'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/outlookaddressbookview-x64.zip'
$checksum64 = '23cf5550b13d5bd962064dcf92483c5dd86bc9a2e8c4a873acc9b4d6299de22b'
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