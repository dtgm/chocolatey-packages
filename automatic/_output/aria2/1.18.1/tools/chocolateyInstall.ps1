try {
	$packageName = 'aria2'
    $url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-1.18.1/aria2-1.18.1-win-32bit-build1.zip'
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}