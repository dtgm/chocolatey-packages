# generated vars
$packageName = 'datacleaner'
$url = 'https://sourceforge.net/projects/datacleaner/files/datacleaner%20%28stable%29/5.0.3/DataCleaner-windows.zip'
$checksum = 'ef9b94b6b6080ee514cabafb9e8271c8afc4ea7c'

# static vars
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

# $Env:ChocolateyInstall\helpers\functions
Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "DataCleaner" `
               | Join-Path -ChildPath "DataCleaner.exe.gui"
Set-Content -Path $installFile `
            -Value $null