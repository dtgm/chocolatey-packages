$packageName = 'pan'
$installerType = 'msi'	
$silentArgs = '/quiet /qn /norestart'
$url = 'https://drive.google.com/uc?export=download&id=0Bxjl408XUVptSE01WUVWRzU1OGM'
$checksum = '82058c82dea2a033785d9912ceee9d39018e44170fe48905cbb259ff42820ed8'
$checksumType = 'sha256'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes -Checksum "$checksum" -ChecksumType "$checksumType"
