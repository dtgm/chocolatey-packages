$packageName = 'kis'
$installerType = 'EXE'
$LCID = (Get-Culture).LCID
$silentArgs = ''
$validExitCodes = @(0) #please insert other valid exit codes here, exit codes for ms http://msdn.microsoft.com/en-us/library/aa368542(VS.85).aspx

##Spanish - Spain (Modern Sort) - Spain (Traditional Sort) (es-es)
if(($LCID -eq "3082") -or ($LCID -eq "1034")){
$url = 'http://products.kaspersky-labs.com/spanish/homeuser/kis2014/kis14.0.0.4651es-es.exe'
}

##Spanish - Mexico (es-mx)
elseif($LCID -eq "2058"){
$url = 'http://products.kaspersky-labs.com/spanish/homeuser/kis2014/kis14.0.0.4651es-mx.exe'
}

##French
elseif($LCID -eq "1036"){
$url = 'http://products.kaspersky-labs.com/french/homeuser/kis2014/kis14.0.0.4651fr-fr.exe'
}

##German
elseif($LCID -eq "1031"){
$url = 'http://products.kaspersky-labs.com/german/homeuser/kis2014/kis14.0.0.4651de-de.exe'
}

##Italian
elseif($LCID -eq "1040"){
$url = 'http://products.kaspersky-labs.com/italian/homeuser/kis2014/kis14.0.0.4651it-it.exe'
}

##Portuguese - Brazil (pt-br)
elseif($LCID -eq "1046"){
$url = 'http://products.kaspersky-labs.com/portuguese/homeuser/kis2014/kis14.0.0.4651pt-br.exe'
}

##Portuguese - Portugal (pt-pt)
elseif($LCID -eq "2070"){
$url = 'http://products.kaspersky-labs.com/portuguese/homeuser/kis2014/kis14.0.0.4651pt-pt.exe'
}

##Portuguese - South Africa (pt-za) ?
#elseif($LCID -eq "XXXX"){
#$url = 'http://products.kaspersky-labs.com/portuguese/homeuser/kis2014/kis14.0.0.4651pt-za.exe'
#}

##Russian - Russian (ru-ru) - Russian-Moldava (ru-mo)
elseif(($LCID -eq "1049") -or ($LCID -eq "2073")){
$url = 'http://products.kaspersky-labs.com/russian/homeuser/kis2014/kis14.0.0.4651ru-ru.exe'
}

##English - United Kingdom (en-gb)
elseif($LCID -eq "2057"){
$url = 'http://products.kaspersky-labs.com/english/homeuser/kis2014/kis14.0.0.4651en-gb.exe'
}

##English
else{
$url = 'http://products.kaspersky-labs.com/english/homeuser/kis2014/kis14.0.0.4651aEN_4882.exe'
}

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url"  -validExitCodes $validExitCodes

#LCID table
#http://msdn.microsoft.com/es-es/goglobal/bb964664.aspx

#downloads location
#http://products.kaspersky-labs.com/