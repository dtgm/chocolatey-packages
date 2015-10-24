$packageName = 'qttabbar'
$url = 'http://qttabbar.wdfiles.com/local--files/qttabbar/QTTabBar_1030.zip'
$checksum = 'cae8d6d3a0bb56d47c7ed6d7795b94fbb7aee9ad'
$checksumType = 'sha1'
$installerType = 'exe'
$silentArgs = "/QI"
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$installFile = Join-Path $toolsDir "$($packageName).exe"
$ahkFile = Join-Path $toolsDir 'chocolateyInstall.ahk'

$regKey = 'HKCU:\SOFTWARE\Quizo\QTTabBar'
if (Test-Path $regKey) {
  $installed = 1
  Write-Debug "Existing install detected."
}

Install-ChocolateyZipPackage -PackageName "$packageName" `
                             -Url "$url" `
                             -UnzipLocation "$toolsDir" `
                             -Url64bit "" `
                             -Checksum "$checksum" `
                             -ChecksumType "$checksumType"

Install-ChocolateyInstallPackage -PackageName "$packageName" `
                                 -FileType "$installerType" `
                                 -SilentArgs "$silentArgs" `
                                 -File "$installFile"

# disable warning popup in IE
New-Item -Path HKCU:\Software\Quizo -ErrorAction SilentlyContinue
New-Item -Path HKCU:\Software\Quizo\QTTabBar -ErrorAction SilentlyContinue
$regKey = 'HKCU:\SOFTWARE\Quizo\QTTabBar'
$regProp = 'IEWarned'
$regPropVal = '1'  #default=0; 1=suppress
Set-ItemProperty $regKey -Name $regProp -Value $regPropVal -Type DWord -ErrorAction SilentlyContinue

if (! $installed -eq 1) {
  Write-Host "Attempting to automatically add QTTabBar to File Explorer, this may take a minute..."
  # temporarily quiet IE via registry
  $disableIePopups = @("DisableFirstRunCustomize","RunOnceHasShown","RunOnceComplete")
  $regIeLm = 'HKLM:\Software\Policies\Microsoft\Internet Explorer\Main'
  $regIeCu = 'HKCU:\Software\Policies\Microsoft\Internet Explorer\Main'
  foreach ($i in $disableIePopups) {
    $regIeLmBak = ,(Get-ItemProperty $regIeLm).$i
    Set-ItemProperty $regIeLm -Name $i -Value 1 -Type DWord
    $regIeCuBak = ,(Get-ItemProperty $regIeCu).$i
    Set-ItemProperty $regIeCu -Name $i -Value 1 -Type DWord
  }  
  Start-Process 'AutoHotKey' $ahkFile -Wait
  # restore registry for IE
  foreach ($i in $disableIePopups) {
    Set-ItemProperty $regIeLm -Name $i -Value $regIeLmBak[$x++] -Type DWord
    Set-ItemProperty $regIeLm -Name $i -Value $regIeLmBak[$y++] -Type DWord
  }
}

Write-Host
@"
After launching a new File Explorer process, if QTTabBar toolbar is not present, please perform the following steps to enable:
`t
1. Enable plugin within INTERNET Explorer:
`t   WinKey+R > iexplore > EnterKey > Alt+X > M > (Verify QTTabBar is set to ENABLE)
`t
2. Add toolbar within FILE Explorer:
`t   WinKey+R > explorer > EnterKey > Alt > V > Y > (Choose QTTabBar to enable the toolbar)
`t
3. Configure QTTabBar by context `"right`" clicking  on the QTTabBar toolbar.
`t
Note:   >   represents the NEXT STEP, not an input
        +   represents HOLDING the first key down while pressing the second key, then releasing both
       ( )  represents INSTRUCTIONS, not an input
"@