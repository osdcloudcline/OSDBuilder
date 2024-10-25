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
   [string]$Title = 'OSD Builder - Windows 10 22H2 - Main Menu',
   [string]$Question = 'What type of action do you need to do?' 
   )
cls

Write-Host "======= $Title ======"
Write-Host " 1. Customize Windows 10 Home"
Write-Host " 2. Customize Windows 10 Pro"
Write-Host " 3. Customize Windows 10 Enterprise"
Write-Host " 4. Customize Windows 10 Enterprise VDI"
Write-Host " 5. Customize Windows 10 Pro for Workstations"
Write-Host " 6. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1'{  cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        
        $Windows10Home = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/Windows%2010/Windows%2010%2022H2%20Build%2019045.240510/Home/Home.ps1")
        Invoke-Expression $($Windows10Home.Content)
      }
  '2' { cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        $Windows10Pro = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Domain%20Administration/DomainAdminMain.ps1")
        Invoke-Expression $($Windows10Pro.Content)
        }
  '3' { cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        $Windows10Enterprise = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Local%20Computer/LocalPCMain.ps1")
        Invoke-Expression $($Windows10Enterprise.Content)
        }
  '4' { cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        $Windows10EnterpriseVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($Windows10EnterpriseVDI.Content)
        }
  '5' { cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        $Windows10ProWorkstation = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/OSDCloudMain.ps1")
        Invoke-Expression $($Windows10ProWorkstation.Content)
        }
'6'{exit}
    }
    }
    until ($selection -eq '6'){exit}
    }

Show-MainMenu
