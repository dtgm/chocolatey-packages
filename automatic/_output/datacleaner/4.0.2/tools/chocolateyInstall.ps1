# generated vars
$packageName = 'datacleaner'
$url = 'http://sourceforge.net/projects/datacleaner/files/datacleaner%20%28stable%29/4.0.2/DataCleaner-windows.zip/download'
$checksum = 'e45738790536cf9caba7c6176e367d6393f08f45'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -Url64bit "" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "DataCleaner" `
               | Join-Path -ChildPath "DataCleaner.exe.gui"
Set-Content -Path $installFile `
            -Value $null