$packageName = 'kvrt'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$batchStart = Join-Path $toolsPath "kvrt.bat"
Uninstall-BinFile "$packageName" "$batchStart"