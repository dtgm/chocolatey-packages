# fastcopy.install really can't be uninstalled without AutoHotKey as a prereq.

$ScriptDir = Split-Path -parent $MyInvocation.MyCommand.Definition
$ProgDir = Join-Path $env:ProgramFiles 'FastCopy'

# Win7 complains the installer didn't run correctly.  This will prevent that.
Set-Variable __COMPAT_LAYER=!Vista

& AutoHotkey.exe $(Join-Path $ScriptDir 'chocolateyUninstall.ahk') | Out-Null

# Uninstall removes desktop/Start Menu icons, but it does not remove the installed program and folder.
if (Test-Path (Join-Path $env:ProgramFiles 'FastCopy')) {
   # Test if Explorer locked the extension dll.  
   $dll = 'FastExt1.dll'
   If (Get-ProcessorBits -eq '64') { $dll = 'FastEx64.dll' }
   $Lock = Get-Process | foreach { $processVar = $_;$_.Modules | foreach { if ($_.FileName -like "*$dll") { $processVar.Name }}}

   # Register a lock for deletion.
   If ($Lock) {
      Write-Host "The FastCopy file extension is locked by $Lock. It will be deleted on next reboot."
      # Function from: https://gallery.technet.microsoft.com/scriptcenter/Register-FileToDelete-0cbb00bb
      #   with reference to "system.linq" (requiring .net 3.5+) removed as it is not needed here.
      Function Register-FileToDelete {
       [cmdletbinding(SupportsShouldProcess = $True )]
       Param (
           [parameter(ValueFromPipeline=$True, ValueFromPipelineByPropertyName=$True)]
           [Alias('FullName','File','Folder')]
           $Source = 'C:\users\Administrator\desktop\test.txt'    
       )
       Begin {
           Try { $null = [File] } 
           Catch { 
               Write-Verbose 'Compiling code to create type'   
               Add-Type @"
               using System;
               using System.Collections.Generic;
               using System.Text;
               using System.Runtime.InteropServices;
        
               public class Posh
               {
                   public enum MoveFileFlags
                   {
                       MOVEFILE_REPLACE_EXISTING           = 0x00000001,
                       MOVEFILE_COPY_ALLOWED               = 0x00000002,
                       MOVEFILE_DELAY_UNTIL_REBOOT         = 0x00000004,
                       MOVEFILE_WRITE_THROUGH              = 0x00000008,
                       MOVEFILE_CREATE_HARDLINK            = 0x00000010,
                       MOVEFILE_FAIL_IF_NOT_TRACKABLE      = 0x00000020
                   }

                   [DllImport("kernel32.dll", SetLastError = true, CharSet = CharSet.Unicode)]
                   static extern bool MoveFileEx(string lpExistingFileName, string lpNewFileName, MoveFileFlags dwFlags);
                   public static bool MarkFileDelete (string sourcefile)
                   {
                       bool brc = false;
                       brc = MoveFileEx(sourcefile, null, MoveFileFlags.MOVEFILE_DELAY_UNTIL_REBOOT);          
                       return brc;
                   }
               }
"@
           }
       }
       Process {
           ForEach ($item in $Source) {
               Write-Verbose ('Attempting to resolve {0} to full path if not already' -f $item)
               $item = (Resolve-Path -Path $item).ProviderPath
               If ($PSCmdlet.ShouldProcess($item,'Mark for deletion')) {
                   If (-NOT [Posh]::MarkFileDelete($item)) {
                       Try { Throw (New-Object System.ComponentModel.Win32Exception) }
                       Catch {Write-Warning $_.Exception.Message}
                   }
               }
           }
       }
      } #end Register-FileToDelete function

      Register-FileToDelete (Join-Path $ProgDir $dll)
      Register-FileToDelete $ProgDir

      # remove everything else
      Remove-Item (Join-Path $ProgDir '*.*') -Exclude $dll -Force
   } else {  Remove-Item $ProgDir -Recurse -Force }
} else { throw 'FastCopy install not found!' }