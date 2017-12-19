$packageName = 'runasdate'
$url = 'http://www.nirsoft.net/utils/runasdate.zip'
$checksum = '321b6915ead1b96b630a9aca1c4cbfdc0d464182705fcb9a66cb05d3d18e1d7e'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/runasdate-x64.zip'
$checksum64 = '29b467615b65b390ac25effeb34c03918dd7f786d6c9ec912aa9e68212109bb1'
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