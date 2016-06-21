$packageName = 'jrt'
$url = 'https://downloads.malwarebytes.com/file/jrt/'
$checksum = 'e1fd26c4df70e94d968d84a1c1996c52c5e777bd47078bd57ff298473b8a785c'
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