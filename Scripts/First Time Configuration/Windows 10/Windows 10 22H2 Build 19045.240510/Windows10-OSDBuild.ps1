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
Write-Host " 13. Computer File Inventory"
Write-Host " 14. Exit PowerShell"
do 
{
  $selection = Read-Host 'Please choose an option'
  switch($selection)
  {
  '1'{  cls
        $OSDBuilderUpdate = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/PowerShell%20Module/Update.ps1")
        Invoke-Expression $($OSDBuilderUpdate.Content)
        $Windows10Home = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/main/Scripts/First%20Time%20Configuration/Windows%2010/Windows%2010%2022H2%20Build%2019045.240510/Home.ps1")
        Invoke-Expression $($Windows10Home.Content)
      }
  '2' { cls
        $Windows10Pro = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Domain%20Administration/DomainAdminMain.ps1")
        Invoke-Expression $($Windows10Pro.Content)
        }
  '3' { cls
        $Windows10Enterprise = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Local%20Computer/LocalPCMain.ps1")
        Invoke-Expression $($Windows10Enterprise.Content)
        }
  '4' { cls
        $Windows10EnterpriseVDI = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/WinGet%20/WinGetMain.ps1")
        Invoke-Expression $($Windows10EnterpriseVDI.Content)
        }
  '5' { cls
        $Windows10ProWorkstation = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSD%20Cloud/OSDCloudMain.ps1")
        Invoke-Expression $($Windows10ProWorkstation.Content)
        }
  '6' { cls
        $OSDBuilder = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/OSDBuilder/OSDBuilderMain.ps1")
        Invoke-Expression $($OSDBuilder.Content)
        }
  '7' {cls
      $AuditMode = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/AuditMode/MainMenu.ps1")
      Invoke-Expression $($AuditMode.Content)
     }
  '8'{cls
      $DebloatOS = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/PostInstall/OSDebloat/OSDebloatMain.ps1")
      Invoke-Expression $($DebloatOS.Content)
     }
  '9'{
        Install-Module -Name OSD -Force -AllowClobber -SkipPublisherCheck
        Import-Module -Name OSD -Force
        $OSDCloudGHDownloads = "C:\OSDCloud\GitHub\downloads"
        $UPBR = "https://github.com/osdcloudcline/OSDCloud/raw/main/User%20Profile%20Backup%20Restore/UserProfileBackupRestore.exe"
        Write-Host "Downloading User Profile Backup and Restore..." -ForegroundColor Yellow
        Write-Output "Download URL: $UPBR" -Verbose
        Write-Output "Download Location: $OSDCloudGHDownloads" -Verbose
        Save-WebFile -SourceUrl $UPBR -DestinationDirectory $OSDCloudGHDownloads
        $UPBROrgName = "C:\OSDCloud\GitHub\downloads\UserProfileBackupRestore.exe"
        $UPBRNewName = "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Rename-Item -Path $UPBROrgName -NewName $UPBRNewName
        Start-Process -FilePath "C:\OSDCloud\GitHub\downloads\UPBR.exe"
        Show-MainMenu
    }

    '10'{cls
       $AdminMain = Invoke-WebRequest ("https://github.com/osdcloudcline/Scripts/raw/main/Administrative/AdminMainMenu.ps1")
       Invoke-Expression $($AdminMain.Content)
    }
    '11'{cls

    $ScanFW = "https://pk.fail/"
    $CheckUEFIBoot = [System.Text.Encoding]::ASCII.GetString((Get-SecureBootUEFI PK).bytes) -match "DO NOT TRUST|DO NOT SHIP"
    
    Write-Verbose "Checking $Baseboard1 $Baseboard2 for PKFail security vulneralbility..." -Verbose
    If($CheckUEFIBoot -eq $false){
    Write-Host "Great news - $env:computername using $Baseboard1 $Baseboard2 is not affected by PKFail security vulneralbility" -ForegroundColor DarkBlue -BackgroundColor White
    }
    ElseIf($CheckUEFIBoot -eq $true){
    Write-Host "Bad news - $env:computername using $Baseboard1 $Baseboard2 is affected by PKFail security vulneralbility" -ForegroundColor DarkRed -BackgroundColor White
    Write-Verbose "Accessing Website..." -Verbose
    Start-Process  $ScanFW
    }
    
    }
    '12'{cls
        $OSDownloads = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/main/OS%20Downloads/OS.ps1")
        Invoke-Expression $($OSDownloads.Content)
    }
    '13'{cls
         Show-FileInventoryMenu
    }
    '14'{exit}
    }
    }
    until ($selection -eq '14'){exit}
    }

Show-MainMenu
















