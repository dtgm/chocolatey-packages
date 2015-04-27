$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$nodePath = Join-Path $scriptPath 'nano-2.2.6.zip'
Get-ChocolateyWebFile 'nano' "$nodePath" 'http://www.nano-editor.org/dist/v2.2/NT/nano-2.2.6.zip'
Get-ChocolateyUnzip "$nodePath" "$scriptPath"