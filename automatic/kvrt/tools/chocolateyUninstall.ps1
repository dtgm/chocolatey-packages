$packageName = '{{PackageName}}'
$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$batchStart = Join-Path $toolsPath "{{PackageName}}.bat"
Uninstall-BinFile "$packageName" "$batchStart"