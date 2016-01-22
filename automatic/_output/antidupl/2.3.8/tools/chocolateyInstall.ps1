$packageName = 'antidupl'
$url = 'https://sourceforge.net/projects/antidupl/files/bin/AntiDupl.NET-2.3.8.exe'
$checksum = '6cf70daf28b09b6ff353dbf9a28bfb27cd075698'
$checksumType = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
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

# create empty sidecar so shimgen creates shim for GUI rather than console
$installFile = Join-Path -Path $toolsDir `
                         -ChildPath "AntiDupl.NET-2.3.8" |
               Join-Path -ChildPath "AntiDupl.NET.exe.gui"
Set-Content -Path $installFile `
            -Value $null