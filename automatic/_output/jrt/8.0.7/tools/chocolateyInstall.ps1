$packageName = 'jrt'
$url = 'https://downloads.malwarebytes.com/file/jrt/'
$checksum = '961ababdd60116d66f0dbae5c3d0489ef3bd342369112dbcdb70b3f95fcc0a04'
$checksumType = 'sha256'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installFile" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Write-Verbose "Create an empty sidecar metadata file for closed-source shimgen.exe to indicate gui"
Set-Content -Path ("$installFile.gui") `
            -Value $null