$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ignoreFiles = Join-Path $toolsDir "bin"
$tempDir = Join-Path $env:Temp "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
if ($env:packageVersion -ne $null) {$tempDir = Join-Path $tempDir "$env:packageVersion";}
$installArchive = Join-Path $tempDir "$($packageName)Install.rar"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$installArchive" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Start-Process "7z" -ArgumentList "x -o`"$toolsDir`" -y `"$installArchive`"" -Wait

$installFile = Join-Path $toolsDir "UniExtract.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null

Get-ChildItem -Path $ignoreFiles -Recurse | 
  Where { $_.Extension -eq '.exe' } |
  % { New-Item $($_.FullName + '.ignore') -Force -ItemType file }