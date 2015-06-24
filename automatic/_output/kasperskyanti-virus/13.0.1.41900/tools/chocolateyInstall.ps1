$packageName = 'kasperskyanti-virus'
$installerType = 'EXE'
$silentArgs = '/s'
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

$LCID = (Get-Culture).LCID

##Spanish
if(($LCID -eq "3082") -or ($LCID -eq "1034")){
$url = 'http://products.kaspersky-labs.com/products/spanish/homeuser/kav2013/kav13.0.1.4190es-es.exe'
}

##French
elseif($LCID -eq "1036"){
$url = 'http://products.kaspersky-labs.com/products/french/homeuser/kav2013/kav13.0.1.4190fr-fr.exe'
}

##German
elseif(($LCID -eq "1031"){
$url = 'http://products.kaspersky-labs.com/products/german/homeuser/kav2013/kav13.0.1.4190de-de.exe'
}

##Italian
elseif(($LCID -eq "1040"){
$url = 'http://products.kaspersky-labs.com/products/italian/homeuser/kav2013/kav13.0.1.4190it-it.exe'
}

##Portuguese Brazilian
elseif(($LCID -eq "1046") -or ($LCID -eq "2070")){
$url = 'http://products.kaspersky-labs.com/products/portuguese/homeuser/kav2013/kav13.0.1.4190pt-pt.exe'
}

##English
else{
$url = 'http://products.kaspersky-labs.com/products/english/homeuser/kav2013/kav13.0.1.4190abcdefEN_4395.exe'
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx