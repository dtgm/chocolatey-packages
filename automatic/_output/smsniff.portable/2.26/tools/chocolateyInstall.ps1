$packageName = 'smsniff.portable'
$url = 'http://www.nirsoft.net/utils/smsniff.zip'
$checksum = '865547e5c966e5ed782430cb79f8c3d633f7552c8ddd99392a7f0591164e55b9'
$checksumType = 'sha256'
$url64 = 'http://www.nirsoft.net/utils/smsniff-x64.zip'
$checksum64 = 'f8112fba6c87925b979c948a6daaff4097df1c329cea0d3f93c00c929d3224fb'
$checksumType64 = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "smsniff.exe"

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