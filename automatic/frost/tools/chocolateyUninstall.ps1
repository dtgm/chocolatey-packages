$packageName = '{{PackageName}}'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$unzDir = Join-Path $toolsDir $packageName
$batFile = Join-Path $unzDir "frost.bat"

Uninstall-BinFile -Name $packageName `
                  -Path $batFile