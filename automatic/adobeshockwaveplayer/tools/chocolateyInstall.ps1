$packageName = '{{PackageName}}'
$installerType = 'exe'
$url = '{{DownloadUrl}}'
$checksum = '{{Checksum}}'
$checksumType = 'sha1'
$silentArgs = '/S /NCRC'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx
$pwdPath = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ahkFile = "$pwdPath\shockwave.ahk"
$fileHippoName = "shockwave"

Start-Process 'AutoHotKey' $ahkFile
Install-ChocolateyPackage $packageName $installerType $silentArgs $url -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"


try {
 
  Import-Module "$($pwdPath)\Get-FilenameFromRegex.ps1"
  # Why does an import failure on this module not throw an error?
 
  $url1 = Get-FilenameFromRegex "http://www.filehippo.com/download_$fileHippoName/history/" 'download_$fileHippoName/([\d]+)/">$fileHippoName {{PackageVersion}}<' "http://www.filehippo.com/download_$fileHippoName/$1/"
  Write-Host "Found URL which contains the download URL 1: $url1"

  $url2 = Get-FilenameFromRegex "$url1" 'download_\$fileHippoName/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_shockwave/download/$1/'
  Write-Host "Found URL which contains the download URL 2: $url2"
   
  $url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
  Write-Host "Found download URL: $url3"
  
  
$client = new-object System.Net.WebClient
$url = "http://filehippo.com/download_" + $fileHippoName


    $packageName = "foobar2000"
    $fileType = "exe"
    $silentArgs = "/S"
    $pwd = "$(split-path -parent $MyInvocation.MyCommand.Definition)"
 
  Import-Module "$($pwd)\Get-FilenameFromRegex.ps1"
  # Why does an import failure on this module not throw an error?
 
  $url1 = Get-FilenameFromRegex "http://www.filehippo.com/download_foobar2000/history/" 'download_foobar2000/([\d]+)/">Foobar2000 1.3.7<' 'http://www.filehippo.com/download_foobar2000/$1/'
 
    Write-Host "Found URL which contains the download URL 1: $url1"
 
    $url2 = Get-FilenameFromRegex "$url1" 'download_foobar2000/download/([\w\d]+)/' 'http://www.filehippo.com/en/download_foobar2000/download/$1/'
    Write-Host "Found URL which contains the download URL 2: $url2"
 
  $url3 = Get-FilenameFromRegex "$url2" '/download/file/([\w\d]+)/' 'http://www.filehippo.com/download/file/$1/'
  Write-Host "Found download URL: $url3"
 
  Install-ChocolateyPackage $packageName $fileType $silentArgs $url3
  
[string]$source_url,  "http://www.filehippo.com/download_foobar2000/history/" 
[string]$find,        'download_foobar2000/([\d]+)/">Foobar2000 1.3.7<' 
[string]$replace      'http://www.filehippo.com/download_foobar2000/$1/'
 
function Get-FilenameFromRegex {
    param(
        [string]$source_url,
        [string]$find,
        [string]$replace
    )
 
    try {



 
        ## Example # $source_url = "http://www.joejoesoft.com/vcms/hot/userupload/8/files/rmv303.zip"
        ## Example # $find = '/cms/file.php\?f=userupload/8/files/rmv303.zip&amp;c=([\w\d]+)'
        ## Example # $replace = 'http://www.joejoesoft.com/sim/$1/userupload/8/files/rmv303.zip'
 
        # Download and open download page
        $tempfile = "$env:TEMP\chocolatey_temp_download.html"
        $wc = new-object system.net.webclient
        $wc.UseDefaultCredentials = $true
        $wc.downloadfile($source_url, $tempfile)
        $source = Get-Content $tempfile


        $null = ''+$source -cmatch $find # Get the matches, prevent output
        # Replace Match-references with previous matches: $1 $2 -> $matches[1] $matches[2]
        #$download_url = $replace -creplace "\$`(\d+)",$matches[$1]
        # This one is not working :(
        # I have a temporary fix that only allows ONE match. However, in most cases we only need one match.
        $download_url = $replace -creplace "\$`(\d+)",$matches[1]
        Remove-Item $tempfile
 
        return $download_url
 
    } catch {
        $errorMessage = "Could not get Regex from download page."
        Write-Error $errorMessage
        throw $errorMessage
  }
}