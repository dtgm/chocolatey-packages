# generated vars
$packageName = 'datacleaner'
$url = 'https://sourceforge.net/projects/datacleaner/files/datacleaner%20%28stable%29/5.1.5/DataCleaner-windows.zip'
$checksum = '610d5e250922a35c7d7fde1f1f2a612e230a7b4b440c70b00fe01cdd40ee5141'

# static vars
$checksumType = 'sha256'
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