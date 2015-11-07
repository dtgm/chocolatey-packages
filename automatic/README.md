Chocolatey Automatic Packages
=============================================  
### Template packages used in an automated update routine

## REQUIREMENTS
* `>=` Microsoft Windows XP SP3
* `>=` .NET Framework 4.0
  * [Web installer](http://www.microsoft.com/en-us/download/details.aspx?id=17851)
  * [Standalone installer](http://www.microsoft.com/en-us/download/details.aspx?id=24872)
* `==` Chocolatey CLI
  * C:\> `@powershell -NoProfile -ExecutionPolicy unrestricted -Command "iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin`
  * PS:\> `iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))`
* `==` [ChocolateyPackageUpdater](https://chocolatey.org/packages/ChocolateyPackageUpdater)
* `==` [ketarin](https://chocolatey.org/packages/ketarin)
  * `+=` ketarin [XML templates](https://github.com/dtgm/chocolatey-packages/tree/master/ketarin)
  * `==` c# scripts
* `+=` Chocolatey package source files (this directory)
  * (Note: The `_output` subdirectory is __not__ needed)

To be able to automatically push to Chocolatey.org:
* `==` Chocolatey.org [account](https://chocolatey.org/account/Register)

## Install frameworks

### Typical workflow for locating silent switch (in order from least work/quickest to most work)
* Old installers: USSF
  * cinst ussf -y
* Options dev wants user to use: cmd.exe > [program].exe /?
* Options for corporate installations: googlefu > (silent|unattended|quiet) install site:example.com
* Devs who "forget": cygwin > strings [program].exe | grepfu

#### Defaults: http://unattended.sourceforge.net/installers.php

#### databases of people who have recorded the above:
* http://wpkg.org/Category:Silent_Installers
* http://www.itninja.com/software/browse
* http://sourceforge.net/apps/trac/unattended/wiki/Scripts

### MSI; [Windows Installer](https://msdn.microsoft.com/en-us/library/cc185688(VS.85).aspx)

$installerType = 'msi'
$silentArgs = '/quiet /qn /norestart'  

https://duckduckgo.com/?q=get+msi+property  
http://www.snowland.se/2010/02/21/read-msi-information-with-powershell/  
http://robertdickau.com/msi_tips.html  

### EXE; [InstallShield](http://www.installshield.com/)

$installerType = 'exe'  
$silentArgs = '/s'

### EXE ? MSI; [InstallShield](http://www.installshield.com/)

$installerType = 'exe'  
$silentArgs = '/s /v`"/qb`"'

### EXE; [InstallMaster](http://www.wise.com/)

$installerType = 'exe'  
$silentArgs = '/s'

#### id
* grep "Wise" setup.exe

### EXE; Inno-Setup

$installerType = 'exe'  
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

### EXE; Nullsoft Scriptable Install System (NSIS)

$installerType = 'exe'  
$silentArgs = '/S'

### [ClickOnce Deployment](https://msdn.microsoft.com/en-us/library/t71a733d(VS.80).aspx)

### JAR; [izPack](http://izpack.org/)

IzPack is a widely used tool for packaging applications on the Java platform.

[zPack architecture](http://izpack.org/documentation/getting-started.html#the-izpack-architecture)  
[Writing Installation XML Files](http://izpack.org/documentation/installation-files.html)

javaw -jar IzPack-install-4.3.5.jar -options-template all-possible.properties

### JAR; Runnable

javaw -jar runnable.jar

* javaw does not 
