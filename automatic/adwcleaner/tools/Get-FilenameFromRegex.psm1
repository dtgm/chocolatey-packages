# Usage: Get-HtmlFromRegex $url $search $replace
# Examples:
# Get-HtmlFromRegex "http://www.joejoesoft.com/vcms/hot/userupload/8/files/rmv303.zip" '/cms/file.php\?f=userupload/8/files/rmv303.zip&amp;c=([\w\d]+)' 'http://www.joejoesoft.com/sim/$1/userupload/8/files/rmv303.zip'

function Get-HtmlFromRegex {
param(
    [string]$sourceUrl,
    [string]$search,
    [string]$replace
)

  # Retrieve content of $sourceUrl
  $tempfile = "$env:TEMP\chocolatey_temp_download.html"
  $wc = new-object system.net.webclient
  $wc.UseDefaultCredentials = $true
  $wc.downloadfile($sourceUrl, $tempfile)
  $source = Get-Content $tempfile

  $nothing = ''+$source -cmatch $search # Get the matches, prevent output
  if ($matches.Count -eq 0) {
    Remove-Item $tempfile
    return
  }
  # Replace Match-references with previous matches: $1 $2 -> $matches[1] $matches[2]
  #$url = $replace -creplace "\$`(\d+)",$matches[$1]
  # Return only first match
  $url = $replace -creplace "\$`(\d+)",$matches[1]
  Remove-Item $tempfile
  Write-Debug "Found URL: $url"
  return $url
}