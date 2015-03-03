Stable install executables + checksum (MD5/SHA1) http://www.sandboxie.com/index.php?AllVersions
Stable changelog http://www.sandboxie.com/index.php?VersionChanges

Beta version http://forums.sandboxie.com/phpBB3/viewforum.php?f=43

Enterprise installation http://www.sandboxie.com/index.php?CorporateInstallation
switch for silent install/remove http://forums.sandboxie.com/phpBB3/viewtopic.php?t=2562


"\\FileServer\SandboxieSetup\SandboxieInstall.exe" /lang=xxxx /install /S /D=C:\Program Files\Sandboxie

/lang=xxxx parameter is optional. 
    /lang=1033 for English.  This is the default setting.
    /lang=1052 for Albanian
    /lang=2052 for Chinese (Simplified)
    /lang=1028 for Chinese (Traditional)
    /lang=1029 for Czech
    /lang=1030 for Danish
    /lang=1043 for Dutch
    /lang=1061 for Estonian
    /lang=1035 for Finnish
    /lang=1036 for French
    /lang=1031 for German
    /lang=1040 for Italian
    /lang=1041 for Japanese
    /lang=1042 for Korean
    /lang=1045 for Polish
    /lang=1046 for Portuguese (Brasil)
    /lang=1049 for Russian
    /lang=1034 for Spanish
    /lang=1055 for Turkish
    
    
Apply product key; validate the Product Key on the Sandboxie web site and activates the license
"C:\Program Files\Sandboxie\License.exe" silent activate PRODUCTKEY

make sure the built-in ERRORLEVEL variable receives the value zero (0) on successful activation or the value one (1) on failure
start "" /wait "C:\Program Files\Sandboxie\License.exe" silent activate PRODUCTKEY




Sandboxie Control program is responsible for automatically deleting the sandbox, among other tasks, so you are advised to run it in any logon session where Sandboxie may be used


 installation of Sandboxie does not configure Sandboxie Control to auto-start during logon. However, a typical installation launches Sandboxie Control when it finishes, and in turn Sandboxie Control configures itself to auto-start during logon, by adding itself to the "Run" key for the current user.

However, the silent installation does not start Sandboxie Control when it finishes.


recommended approach  installation script should add Sandboxie Control to the local machine "Run" key, for example using this Windows command:
reg add HKLM\Software\Microsoft\Windows\CurrentVersion\Run /v SbieCtrl /t REG_SZ /d "C:\Program Files\Sandboxie\SbieCtrl.exe" /f

installation script should make sure that Sandboxie Control does not try to add itself to the "Run" key of the current user, because it is already configured in the machine-wide "Run" key. To do this, make sure these lines appears in your Sandboxie.ini:
    [UserSettings_Default]
    SbieCtrl_EnableLogonStart=N
    
newer version of Sandboxie can be pushed to the workstations by simply running the Sandboxie installation program in upgrade mode. Use this command:

    "\\FileServer\SandboxieSetup\SandboxieInstall.exe" /upgrade /S
Note that an upgrade installation does not require the /lang or /D switches that were necessary for initial installation.

Notes regarding Sandboxie Control
  * upgrade installation will automatically close Sandboxie Control as part of the upgrade process.
  * silent upgrade installation, like the initial installation, does not start Sandboxie Control when it finishes.
  * upgrading to version 3.48, you may need to explicitly apply your new Product Key. You may also wish to enable silent reactivation of the license. See ActivationPrompt.
  
  
Sample Sandboxie.ini File

    [GlobalSettings]
    ForceDisableAdminOnly=yes
    EditAdminOnly=yes
    MonitorAdminOnly=yes
    FileRootPath=C:\TEMP\Sandbox\%USER%\%SANDBOX%
    ActivationPrompt=n
    [DefaultBox]
    Enabled=y
    ConfigLevel=6
    AutoDelete=y
    AutoRecover=n
    ForceProcess=iexplore.exe
    OpenFilePath=%Favorites%
    OpenFilePath=%Desktop%\Download
    LeaderProcess=iexplore.exe
    BorderColor=#00FFFF
    [UserSettings_Default]
    SbieCtrl_ShowWelcome=N
    SbieCtrl_HideWindowNotify=N
    SbieCtrl_ReloadConfNotify=N
    SbieCtrl_AutoApplySettings=Y
    SbieCtrl_SettingChangeNotify=N
    SbieCtrl_TerminateWarn=N
    SbieCtrl_ExplorerWarn=N
    SbieCtrl_EditConfNotify=N
    SbieCtrl_ProcSettingsNotify=N
    SbieCtrl_ExplorerNotify=N
    SbieCtrl_ShortcutNotify=N
    SbieCtrl_TerminateNotify=N
    SbieCtrl_EnableLogonStart=N
    SbieCtrl_EnableAutoStart=Y
    SbieCtrl_AddDesktopIcon=N
    SbieCtrl_AddQuickLaunchIcon=N
    SbieCtrl_AddContextMenu=N
    SbieCtrl_AddSendToMenu=N
    SbieCtrl_NextUpdateCheck=1555555555
    SbieCtrl_UpdateCheckNotify=N
    SbieCtrl_AutoRunSoftCompat=N
    
Sample Automated Batch File

    rem
    rem   If Sandboxie is already installed on this workstation, do nothing
    rem
    if exist C:\Windows\Sandboxie.ini exit /b
    rem
    rem   Set Configuration
    rem
    copy "\\FileServer\SandboxieSetup\Sandboxie.ini" C:\Windows
    rem
    rem   Install Sandboxie
    rem
    "\\FileServer\SandboxieSetup\SandboxieInstall.exe" /install /S /D=C:\Program Files\Sandboxie
    rem
    rem   Register Sandboxie
    rem
    "C:\Program Files\Sandboxie\License.exe" activate XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
    rem
    rem   Start Sandboxie Control
    rem
    set ZZKEY=HKLM\Software\Microsoft\Windows\CurrentVersion\Run
    set ZZEXE="C:\Program Files\Sandboxie\SbieCtrl.exe"
    c:\windows\system32\reg add %ZZKEY% /v SbieCtrl /t REG_SZ /d %ZZEXE% /f
    %ZZEXE%