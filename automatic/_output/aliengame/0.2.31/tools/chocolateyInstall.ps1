$packageName = 'aliengame'
$url = 'https://s3.amazonaws.com/www-scienceathome-org-wp/wp-content/uploads/2015/04/AlienGame11.rar'
$checksum = '33275d743a9181f8af6f0f051c8bed53'
$checksumType = 'md5'
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

$installFile = Join-Path $toolsDir "AlienGame.exe"
Set-Content -Path ("$installFile.gui") `
            -Value $null