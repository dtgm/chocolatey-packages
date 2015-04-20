# generated vars
$packageName = 'datacleaner'
$url = 'http://sourceforge.net/projects/datacleaner/files/datacleaner%20%28stable%29/3.7.2/DataCleaner-windows.zip/download'
$checksum = 'ca7a84ddbf0a553d03db03efaf65fb07fd9e0e55'

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