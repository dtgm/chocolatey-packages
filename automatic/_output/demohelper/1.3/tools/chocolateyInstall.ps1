$packageName = 'demohelper'
$urlArray = @('http://sourceforge.net/projects/demohelper/files/DemoHelper-1.3.exe/download', 'http://sourceforge.net/projects/demohelper/files/DemoHelper64-1.3.exe/download')
$url = $urlArray[0]
$checksum = '82c22dba6475c0c9d3ae5d708a8f18a9f381cf15'
$checksumType = 'sha1'
$url64 = $urlArray[1]
$checksum64 = 'd5556e0f99e414b2a4e394a48ba2faa302907002'
$checksumType64 = 'sha1'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
try {
  Get-ChocolateyWebFile -PackageName "$packageName" `
                        -FileFullPath "$installFile" `
                        -Url "$url" `
                        -Url64bit "$url64" `
                        -Checksum "$checksum" `
                        -ChecksumType "$checksumType" `
                        -Checksum64 "$checksum64" `
                        -ChecksumType64 "$checksumType64"
  Set-Content -Path ("$installFile.gui") `
              -Value $null
} catch {
  throw $_.Exception
}