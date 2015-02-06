try {
	$packageName = 'aria2'
    $url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-1.18.0/aria2-1.18.0-win-32bit-build1.zip'
    #$url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-{version}/{anchor1}.zip' # For testing purposes
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}