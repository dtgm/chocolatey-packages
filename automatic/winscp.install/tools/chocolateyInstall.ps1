﻿$packageName = '{{PackageName}}'
$packageSearch = 'WinSCP {{PackageVersion}}'
$packageVersion = '{{PackageVersion}}'
$versionShort = ($packageVersion).Replace(".","")
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
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
  if ((Get-WmiObject Win32_ComputerSystem).PartOfDomain) {
    $proxy = [System.Net.WebRequest]::GetSystemWebProxy()
    $proxy.Credentials = [System.Net.CredentialCache]::DefaultCredentials
    $wc.proxy = $proxy
  }
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