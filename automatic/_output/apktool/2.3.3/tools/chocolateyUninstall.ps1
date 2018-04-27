$packageName = 'apktool'
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installBat = Join-Path -Path $toolsDir `
                        -ChildPath "apktool.bat"
Uninstall-BinFile -Name $packageName -Path $installBat