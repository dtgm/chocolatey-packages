$packageName = 'soluto'
$packageVersion = '1.3.1497.1'
$installerType = 'exe'
$silentArgs = '/q'
$url = 'http://updater.prodenv6.mysoluto.com/updates/solutoinstaller.exe'
$checksum = 'eae0a7db5670f0b6fbc27c850240253b6b4ad485'
$checksumType = 'sha1'
$validExitCodes = @(0)

$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $scriptPath "$($packageName)Install.ahk"

try {
  if ( 
    Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                              'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                              'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                     -ErrorAction:SilentlyContinue `
    | Where-Object { $_.DisplayName -like "Soluto" `
                                    -and `
                     $_.DisplayVersion -ge $packageVersion } 
  ) {
    Write-Host "$packageName version $packageVersion or newer is already installed."
  } else {
    Start-Process $ahkExe $ahkFile

    Install-ChocolateyPackage -PackageName "$packageName" `
                              -FileType "$installerType" `
                              -SilentArgs "$silentArgs" `
                              -Url "$url" `
                              -ValidExitCodes $validExitCodes `
                              -Checksum "$checksum" `
                              -ChecksumType "$checksumType"
  }
} catch {
  throw $_.Exception
}