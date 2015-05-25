$packageName = 'winscp'
$verisonNumber = '572'
$url = 'http://prdownloads.sourceforge.net/winscp/winscp' + $verisonNumber + 'setup.exe'
$language = (Get-Culture).TwoLetterISOLanguageName.ToLower()
$args = "/VERYSILENT /LANG=$language"

if ($language -eq $null) {
    $language = 'en' # Fallback language if others fail
}

try {   
    Install-ChocolateyPackage $packageName 'exe' $args $url

    $langFileName = "WinSCP.$language"
    $winscpDir = 'c:\Program Files\WinSCP'
    if (Get-ProcessorBits 64) {
        $winscpDir = 'c:\Program Files (x86)\WinSCP'
    }
    $supportLangs = 'ru', 'de', 'fr', 'cs', 'nl', 'fi', 'it', 'jp', 'ko', 'lt', 'no', 'pl', 'es'

    if (-not (Test-Path "$winscpDir\$langFileName")) {
        if ($supportLangs -contains $language) {
            $chocTempDir = Join-Path $env:TEMP "chocolatey"
            $targetDir = Join-Path $chocTempDir "$packageName"
            $targetDir = Join-Path $targetDir 'unzip'
            if (![System.IO.Directory]::Exists($targetDir)) {[System.IO.Directory]::CreateDirectory($targetDir)}
            $translateFileUrl = 'http://winscp.net/translations/dll/' + $verisonNumber + '/' + $language + '.zip'
            
            write-host "[$packageName] Download file with translate '$language': $translateFileUrl"
            Install-ChocolateyZipPackage "$packageName" "$translateFileUrl" "$targetDir"
            
            write-host "[$packageName] Copy file with translate to the '$winscpDir'"
            Start-ChocolateyProcessAsAdmin "Copy-Item -force -Path `'$targetDir\WinSCP.$language`' -Destination `'$winscpDir`'"
        }
    }
    
    write-host "[$packageName] *** If your language is not set automatically. Please select your language in Preferences -> Languages ***"
} catch {
    Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw
}