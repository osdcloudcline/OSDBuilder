Write-Host '                                                '  -BackgroundColor White
Write-Host '   OSDBuilder is a tool that allows users to    '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   import both client & server operating system '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   DVD ISO images to customize, update,         '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   remove editions, remove built in apps,       '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   add drivers, packages, scripts, extra files, '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   WinPE Powershell Mods & Start Menu layout    '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '                                                '  -BackgroundColor White
Write-Host '   WARNING: OSDBuilder consumes a large amount  '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '   disk space during customization, so DO NOT   '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '   use your Windows OS Drive (C:\)              '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '                                                '  -BackgroundColor White
pause

Function Show-MainMenu{
   [CmdletBinding()]
   param(
   [string]$Title = 'OSD Builder -  Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

Write-Host "======= $Title ======"
Write-Host " 1. First Time Configuration - Windows 10"
Write-Host " 2. First Time Configuration - Windows 11"
Write-Host " 3. First Time Configuration - Windows 12"
Write-Host " 4. First Time Configuration - Windows Server"
Write-Host " 5. Monthly Updates"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1'{  cls
        $Windows10 = Invoke-WebRequest("")
        Invoke-Expression $($Windows10.Content)
      }
  '2' { cls
        $Windows11 = Invoke-WebRequest ("")
        Invoke-Expression $($Windows11.Content)
        }
  '3' { cls
        $Windows12 = Invoke-WebRequest ("")
        Invoke-Expression $($Windows12.Content)
        }
  '4' { cls
        $WindowsServer = Invoke-WebRequest ("")
        Invoke-Expression $($WindowsServer.Content)
        }
  '5' { cls
        $Monthly = Invoke-WebRequest ("")
        Invoke-Expression $($Windows10ProWorkstation.Content)
        }
'6'{exit}
    }
    }
    until ($selection -eq '6'){exit}
    }

Show-MainMenu
