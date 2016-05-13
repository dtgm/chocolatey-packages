$packageName = '{{PackageName}}'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'md5'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileType = '7z'
$tempDir = Join-Path $env:Temp "$packageName"
if (![System.IO.Directory]::Exists($tempDir)) {[System.IO.Directory]::CreateDirectory($tempDir) | Out-Null}
if ($env:packageVersion -ne $null) {$tempDir = Join-Path $tempDir $env:packageVersion}
$file = Join-Path $tempDir "$($packageName)-$($env:PackageVersion).$fileType"

Get-ChocolateyWebFile -PackageName "$packageName" `
                      -FileFullPath "$file" `
                      -Url "$url" `
                      -Checksum "$checksum" `
                      -ChecksumType "$checksumType"
                      
Start-Process "7z" -ArgumentList "x -o`"$toolsDir`" -y `"$file`"" -Wait

$extractRootDir = Get-ChildItem $toolsDir\snapshot_*
if ($extractRootDir.Count -eq 1) {
  Move-Item -Path $extractRootDir\* `
            -Destination $toolsDir
  Remove-Item -Path $extractRootDir -Force -ErrorAction SilentlyContinue
}

$exeDir = Join-Path $toolsDir "release"
$exeDir32 = Join-Path $exeDir "x32"
$exeDir64 = Join-Path $exeDir "x64"
$installFile32 = Join-Path $exeDir32 "x32dbg.exe"
$installFile64 = Join-Path $exeDir64 "x64dbg.exe"
Set-Content -Path ("$installFile32.gui") `
            -Value $null
Set-Content -Path ("$installFile64.gui") `
            -Value $null
