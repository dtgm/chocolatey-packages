try { 
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  Install-ChocolateyPackage 'vcredist2008' 'exe' '/Q' 'http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe'
  if($is64bit) {
  	Install-ChocolateyPackage 'vcredist2008_x64' 'exe' '/Q' 'http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe'
  }

  # the following is all part of error handling
  Write-ChocolateySuccess 'vcredist2008'
} catch {
  Write-ChocolateyFailure 'vcredist2008' "$($_.Exception.Message)"
  throw 
}


Install-ChocolateyPackage 'vcredist2008' 'exe' '/Q' 'http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe' 'http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe'


http://download.microsoft.com/download/d/d/9/dd9a82d0-52ef-40db-8dab-795376989c03/vcredist_x86.exe
http://download.microsoft.com/download/1/1/1/1116b75a-9ec3-481a-a3c8-1777b5381140/vcredist_x86.exe

http://download.microsoft.com/download/2/d/6/2d61c766-107b-409d-8fba-c39e61ca08e8/vcredist_x64.exe
http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe


http://download.microsoft.com/download/d/2/4/d242c3fb-da5a-4542-ad66-f9661d0a8d19/vcredist_x64.exe


9.0.21022.8
x86
https://www.microsoft.com/en-us/download/details.aspx?id=29
Microsoft Visual C++ 2008 Redistributable Package (x86)
11/29/2007
56719288ab6514c07ac2088119d8a87056eeb94a


9.0.21022.8
x64
https://www.microsoft.com/en-us/download/details.aspx?id=15336
Microsoft Visual C++ 2008 Redistributable Package (x64)
11/29/2007
5580072a056fdd50cdf93d470239538636f8f3a9




The Microsoft Visual C++ 2008 SP1 Redistributable Package (x86) installs runtime components of Visual C++ Libraries required to run applications developed with Visual C++ SP1 on a computer that does not have Visual C++ 2008 SP1 installed. 

This package installs runtime components of C Runtime (CRT), Standard C++, ATL, MFC, OpenMP and MSDIA libraries. For libraries that support side-by-side deployment model (CRT, SCL, ATL, MFC, OpenMP) they are installed into the native assembly cache, also called WinSxS folder, on versions of Windows operating system that support side-by-side assemblies. 


9.0.30729.17
x86
https://www.microsoft.com/en-us/download/details.aspx?id=5582
Microsoft Visual C++ 2008 SP1 Redistributable Package (x86)
9/16/2008
6939100e397cef26ec22e95e53fcd9fc979b7bc9

9.0.30729.17
x64
https://www.microsoft.com/en-us/download/details.aspx?id=2092
Microsoft Visual C++ 2008 SP1 Redistributable Package (x64)
8/9/2008
13674c43652b941dafd2049989afce63cb7c517b




