$packageName = 'uniextract.portable'
$url = 'http://legroom.net///scripts/download.php?file=uniextract161_noinst'
$checksum = 'e960091d203c84c6034c14a6146f8f4bb638b11a'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$ignoreFiles = Join-Path $toolsDir "bin"
$fileType = 'rar'
$chocTempDir = Join-Path $env:Temp "chocolatey"
$tempDir = Join-Path $chocTempDir "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
if ($env:packageVersion -ne $null) {$tempDir = Join-Path $tempDir "$env:packageVersion";}
$file = Join-Path $tempDir "$($packageName)Install.$fileType"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$file" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"

Start-Process "7z" -ArgumentList "x -o`"$toolsDir`" -y `"$file`"" -Wait

$installFile = Join-Path $toolsDir "UniExtract.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null

Get-ChildItem -Path $ignoreFiles -Recurse | 
  Where { $_.Extension -eq '.exe' } |
  % { New-Item $($_.FullName + '.ignore') -Force -ItemType file }