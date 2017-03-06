$packageName = 'winscp.install'
$packageSearch = 'WinSCP 5.9.1'
$packageVersion = '5.9.1'
$versionShort = ($packageVersion).Replace(".","")
$url = 'https://sourceforge.net/projects/winscp/files/WinSCP/5.9.1/WinSCP-5.9.1-Setup.exe'
$checksum = ''
$checksumType = 'sha1'
$validExitCodes = @(0)

$language = (Get-Culture).TwoLetterISOLanguageName.ToLower()
if ($language -eq $null) {
    $language = 'en' # Fallback language if others fail
}

$installerType = 'exe'
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /LANG=$language'

Install-ChocolateyPackage -PackageName "$packageName" `
                          -FileType "$installerType" `
                          -SilentArgs "$silentArgs" `
                          -Url "$url" `
                          -ValidExitCodes $validExitCodes `
                          -Checksum "$checksum" `
                          -ChecksumType "$checksumType"

# install translation language file if English is not the primary system language
if ($language -ne 'en') {
  # get registry object for installed WinSCP
  $reg = Get-ItemProperty -Path @( 'HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ) `
                           -ErrorAction:SilentlyContinue `
          | Where-Object   { $_.DisplayName -like "$packageSearch" }
  $langFileName = "WinSCP.$language"
  $installLoc = $reg.InstallLocation
  
  # install translation file if it exists
  $wc = New-Object Net.WebClient
  $html = $wc.DownloadString("http://www.winscp.net/eng/translations.php")
  $compatLangs = [Regex]::Matches($trans, "\w{2}(?=\.zip)")
  if ($compatLangs.Value -contains "$language") {
    $urlLang = 'http://winscp.net/translations/dll/' + $versionShort + '/' + $language + '.zip'
    Write-Host "[$packageName] Download file with translate '$language': $urlLang"
    Install-ChocolateyZipPackage -PackageName "$packageName" `
                                 -Url "$urlLang" `
                                 -UnzipLocation "$installLoc"
    Write-Host "[$packageName] *** If your language is not set automatically. Please select your language in Preferences -> Languages ***"
  } else {
    Write-Warning "Download file for translation language `"'$language'`" was not found."
    Write-Warning "Please help create a translation file for your language."
    Write-Warning "See winscp.net/translations.php for more information"
  }
}