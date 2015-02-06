try {
	$packageName = 'aria2'
    $url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-1.17.1/aria2-1.17.1-win-32bit-build1.zip'
    #$url = 'http://heanet.dl.sourceforge.net/project/aria2/stable/aria2-{version}/{anchor1}.zip' # For testing purposes
    $unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
    Install-ChocolateyZipPackage $packageName $url $unzipLocation

    #$dateFolder = $url -replace 'http://fritzing\.org.+download.+/windows/(fritzing.+\.pc)\.zip', '$1'
    #$targetFilePath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\{anchor1}\aria2c.exe"
    #Install-ChocolateyDesktopLink $targetFilePath

    Write-ChocolateySuccess $packageName
}   catch {
    Write-ChocolateyFailure $packageName $($_.Exception.Message)
    throw
}