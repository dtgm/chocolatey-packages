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

https://wikipedia.org/wiki/List_of_installation_software

### Typical workflow for locating silent switch (in order from least work/quickest to most work)
* Old installers: USSF
  * cinst ussf -y
* Options dev wants user to use: cmd.exe > [program].exe /?
* Options for corporate installations: googlefu > (silent|unattended|quiet) install site:example.com
* Devs who "forget": cygwin > strings [program].exe | grepfu

### How to handle installer frameworks
* http://unattended.sourceforge.net/installers.php

### Notes: Installing specific software silently
* http://wpkg.org/Category:Silent_Installers
* http://www.itninja.com/software/browse
* http://sourceforge.net/apps/trac/unattended/wiki/Scripts

### MSI

Extension: `.msi`

#### [Windows Installer](https://msdn.microsoft.com/en-us/library/cc185688(VS.85).aspx)

Developer: [Microsoft](https://www.microsoft.com/)  
Deployment utility: `msiexec.exe`

```
$installerType = 'msi'  
$silentArgs = '/quiet /qn /norestart'  
```

https://duckduckgo.com/?q=get+msi+property  
http://www.snowland.se/2010/02/21/read-msi-information-with-powershell/  
http://robertdickau.com/msi_tips.html

#### Other

Besides existing as stand-alone files, MSI may also be packaged within another install framework:

* InstallShield EXE (see below)
* self-extractable CAB files: extract MSI with UniExtract

### EXE

Extension: `.exe`  
Deployment utility: 

#### [InstallShield](http://www.installshield.com/)

Developer: [Flexera Software](http://www.flexerasoftware.com/)

Silent install file:  `setup.iss`

```
$installerType = 'exe'  
$silentArgs = '/s'
```

[Commandline options](http://helpnet.flexerasoftware.com/installshield19helplib/helplibrary/IHelpSetup_EXECmdLine.htm#Ref-Command-LineTools_3873826509_1039936)

* `/r`  run the installation in record mode
* `/s`  run the installation in silent mode based on the responses contained in a response file called `Setup.iss` in the same directory
  * To run a Basic MSI installation silently: `Setup.exe /s /v/qn`
  * To specify the values of public properties for a silent Basic MSI installation: `Setup.exe /s /v"/qn INSTALLDIR=D:\Destination"`
* `/f1`  where the response file is (or where it should be created)
  * `Setup.exe /s /f1"C:\Temp\Setup.iss"`
* `/f2`  alternative log file location
  * `Setup.exe /s /f2"C:\Setup.log"`
* `/p"PASSWORD"` if password was set by developer
  * `Setup.exe /s /p"password"`
* `/sms`  EXE

Commandline options for [InstallShield Prerequisites](http://helpnet.flexerasoftware.com/installshield19helplib/helplibrary/SetupPrereqEditorCmdLine.htm#DefiningPrerequisites_1015287652_1033736)

InstallShield 2015 [Editions](http://www.flexerasoftware.com/producer/products/software-installation/installshield-software-installer/tab/editions)

* Premier $4,999.00
* Professional $2,799.00
* Express $699.00

[Commercial license](http://resources.flexerasoftware.com/instructions/productlicensing/en/installshield.htm)

#### >= InstallShield 7

* support for producing MSI install files
* may be shipped alone or with a `setup.exe` installer
* two flavors, called **InstallScript MSI** and **Basic MSI**

##### InstallScript MSI

Ibid; uses same switches as above InstallShield for EXE

##### Basic MSI

silent/unattended switches are `/s /v"FOO"` where `FOO` are switches to pass to `msiexec.exe`

so silent/unattended switches for InstallShield EXE and embedded MSI are: `/s /v"qb norestart"`

```
$installerType = 'exe'
$silentArgs = '/s /v`"/qb`"'
```

Note deprecated switch for InstallShield Basic MSI install files:

* `/sms`  MSI-based install executables no longer need to be told to wait for forked process to complete as `msiexec.exe` handles waiting

### [InstallMaster](http://www.wise.com/)

Developer: [Wise Soloutions Inc](https://wikipedia.org/wiki/Wise_Solutions,_Inc.) (defunct)

End-of-Lifed by owner, Symantec, on 7 November 2011

May detect if `FOO.exe` was built by InstallMaster by parsing binary `grep "Wise" FOO.exe`

```
$installerType = 'exe'  
$silentArgs = '/s'
```

### [Inno-Setup](http://jrsoftware.org/isinfo.php)

Developer: [Jordan Russell Software](http://www.jrsoftware.org/)

```
$installerType = 'exe'  
$silentArgs = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
```

[parameters](http://www.jrsoftware.org/ishelp/index.php?topic=setupcmdline)  
[exit codes](http://www.jrsoftware.org/ishelp/topic_setupexitcodes.htm)  
[tasks](http://www.jrsoftware.org/ishelp/index.php?topic=setupcmdline)  
[license](http://www.jrsoftware.org/files/is/license.txt)  

* `/VERYSILENT`  No progress window
* `/SUPPRESSMSGBOXES`  Instructs Setup to suppress message boxes. Only has an effect when combined with '/SILENT' or '/VERYSILENT'.
* `/NORESTART`  Prevents Setup from restarting the system following a successful installation, or after a Preparing to Install failure that requests a restart. Typically used along with /SILENT or /VERYSILENT.
* `/SP-`  Disables the This will install... Do you wish to continue? prompt at the beginning of Setup. Of course, this will have no effect if the DisableStartupPrompt [Setup] section directive was set to yes.
* `/NOICONS`  Instructs Setup to initially check the Don't create a Start Menu folder check box on the Select Start Menu Folder wizard page.

### Nullsoft Scriptable Install System ([NSIS](http://nsis.sourceforge.net/))

Developer: [Nullsoft](http://www.nullsoft.net/)

```
$installerType = 'exe'  
$silentArgs = '/S'
```

[Commandline options](http://nsis.sourceforge.net/Docs/Chapter4.html#silent)

### [Ghost installer](http://www.ethalone.com/products.html)

Developer: [Ethalone Solutions, Inc](http://www.ethalone.com/)

Commandline options via [forum post](https://web.archive.org/web/20070812133050/http://www.ethalone.com/cgi-bin/ib/ikonboard.cgi?act=ST;f=2;t=195) (03 Jan 2005)

* `-s`  silent mode
* `-r`  repair
* `-c`  add/remove
* `-u`  uninstall

http://www.ethalone.com/download/gi/WhatsNew.txt

* `.sss`  silent settings file used for repair and silent setup

#### Editions
[Free (limited)](http://www.ethalone.com/download.html)  
[Commercial](http://www.ethalone.com/commercial-products.html)

### JAR (installer)

Extension: `.jar`

#### [izPack](http://izpack.org/)

Developer: [Julien Ponge](https://julien.ponge.org/)

IzPack is a widely used tool for packaging applications on the Java platform.

[zPack architecture](http://izpack.org/documentation/getting-started.html#the-izpack-architecture)  
[Writing Installation XML Files](http://izpack.org/documentation/installation-files.html)

`javaw -jar IzPack-install-4.3.5.jar -options-template all-possible.properties`

Commandline options: [Unattended installations](https://izpack.atlassian.net/wiki/display/IZPACK/Unattended+Installations)
License: [Apache License version 2.0](https://wikipedia.org/wiki/Apache_License#Version_2.0)

### [JAR](https://wikipedia.org/wiki/JAR_(file_format)) (portable)

Developer: 

* 1995-2009: Sun Microsystems
* >=2009: [Oracle Corp](http://www.oracle.com/)

`javaw -jar FOO.jar`

[Lesson: Packaging Programs in JAR Files](http://docs.oracle.com/javase/tutorial/deployment/jar/)

### Other

#### [ClickOnce Deployment](https://msdn.microsoft.com/en-us/library/t71a733d(VS.80).aspx)

Developer: [Microsoft](https://www.microsoft.com/)