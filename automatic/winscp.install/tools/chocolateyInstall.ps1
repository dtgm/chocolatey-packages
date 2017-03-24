$packageName = '{{PackageName}}'
$packageSearch = 'WinSCP {{PackageVersion}}'
$packageVersion = '{{PackageVersion}}'
$softwareVersion = $packageVersion
$url = '{{DownloadUrlx64}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha256'
$validExitCodes = @(0)

$language = (Get-Culture).TwoLetterISOLanguageName.ToLower()
if ($language -eq $null) {
    $language = 'en' # default language
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

if ($language -ne 'en') {
  Write-Verbose "Retrieving list of translations"
  $url = "http://www.winscp.net/eng/translations.php"
  $f = Join-Path -Path $Env:Temp `
				 -ChildPath ([System.IO.Path]::GetRandomFileName())
  Get-WebFile -Url $url `
              -FileName $f `
              -Options $Options 3>$null
  $str = Get-Content $f -ReadCount 0 | Out-String
  Remove-Item $f
  
  Write-Verbose "Checking if language translation file is available."
  $compatLangs = [Regex]::Matches($str, "\w{2}(?=\.zip)")
  if ($compatLangs.Value -Contains $language) {
    $urlLang = 'http://winscp.net/translations/dll/' + $softwareVersion + '/' + $language + '.zip'
    Write-Host "[$packageName] Download file with translate '$language': $urlLang"
	$reg = Get-ItemProperty -Path @('HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*',
                                    'HKCU:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*') `
                            -ErrorAction:SilentlyContinue `
           | Where-Object {$_.DisplayName -Like "$packageSearch"}
    $langFileName = "WinSCP.$language"
    $unzipLocation = $reg.InstallLocation
	
    Install-ChocolateyZipPackage -PackageName $packageName `
                                 -Url $urlLang `
                                 -UnzipLocation $unzipLocation

    Write-Host "[$packageName] *** If your language is not set automatically. Please select your language in Preferences -> Languages ***"
  } else {
    Write-Warning "Download file for translation language `"'$language'`" was not found."
    Write-Warning "Please help create a translation file for your language."
    Write-Warning "See winscp.net/translations.php for more information"
  }
}