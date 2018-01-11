$packageName = 'antidupl'
$url = 'https://sourceforge.net/projects/antidupl/files/bin/AntiDupl.NET-2.3.9.exe'
$checksum = 'da95c014d67e9c42af4c703e0f7bf768c69c867ffc3c01bd767a243cb285c912'
$checksumType = 'sha256'
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
                         -ChildPath "AntiDupl.NET-2.3.9" |
               Join-Path -ChildPath "AntiDupl.NET.exe.gui"
Set-Content -Path $installFile `
            -Value $null