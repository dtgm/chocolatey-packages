$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$startMenu = "$([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::CommonPrograms))"
try {
  Get-ChildItem $toolsDir\*.exe `
    | ForEach-Object { Remove-Item -Force $startMenu\$_.Name  -ErrorAction SilentlyContinue }
  start-sleep 3
  Get-ChildItem $toolsDir\*.exe `
    | ForEach-Object { Remove-Item -Force "$startMenu\$_.Name" -ErrorAction SilentlyContinue }
  start-sleep 3
  Get-ChildItem $toolsDir\*.exe `
    | ForEach-Object { Remove-Item -Force '$startMenu\$_.Name' -ErrorAction SilentlyContinue }
} catch {
  throw $_.Exception
}