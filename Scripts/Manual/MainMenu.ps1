       $os = Get-CimInstance -ClassName Win32_OperatingSystem
       $PCName = "$env:computername"
       $OSVerison = $($os.Version)
       $UBR = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name UBR).UBR
       $FullOS = $($os.Caption)
       $OSBuild = $($os.Version) + "." + $UBR
       $DisplayVersion = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name DisplayVersion).DisplayVersion
       $EditionID = (Get-ItemProperty 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion' -Name EditionID).EditionID
       $CompleteOSInfo = "$FullOS" + " $OSBuild" + " $DisplayVersion"
       $EdgeEXE = Get-ItemPropertyValue 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\msedge.exe' "(default)"
       $EdgeBrowser = (Get-Item $EdgeEXE).VersionInfo.ProductVersion
       Write-Host
       Write-Host         "Running Computer Info:" -ForegroundColor Green 
       Write-Verbose "System Hostname: $PCName" -Verbose
       Write-Verbose "Running Operating System: $CompleteOSInfo" -Verbose  
       Write-Verbose "Operating System: $FullOS" -Verbose 
       Write-Verbose "Build Number: $OSBuild" -Verbose 
       Write-Verbose "Display Version: $DisplayVersion" -Verbose
       Write-Verbose "OS Edition: $EditionID" -Verbose 
       Write-Verbose "MS Edge Chromium Version: $EdgeBrowser" -Verbose 
       
pause

cls
Write-Host "======= $Title ======"
Write-Host " 1. Manual Configuration - Windows 10"
Write-Host " 2. Manual Configuration - Windows 11"
Write-Host " 3. Manual Configuration - Windows 12"
Write-Host " 4. Manual Configuration - Windows Server"
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
        $Windows11 = Read-Host - Prompt 'What SKU do you need to modify? (Home, Pro, ProWorkstations, Enterprise, EnterpriseVDI)'
        $W11Ver = Read-Host -Prompt 'What version do you want to modify? (21H2, 22H2, 23H2, 24H2 or 25H2)'
        If(($Windows11 -eq "Home") -or ($Windows11 -eq "home") -and ($W11Ver -eq "21H2")){
        $Home21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Manual/Windows%2011/21H2/Home.ps1")
        Invoke-Expression $($Home21H2.Content)
        }
        ElseIf(($Windows11 -eq "Home") -or ($Windows11 -eq "home") -and ($W11Ver -eq "22H2")){
        $Home22H2 = Invoke-WebRequest("")
        Invoke-Expression $($Home22H2.Content)
        }
        ElseIf(($Windows11 -eq "Home") -or ($Windows11 -eq "home") -and ($W11Ver -eq "23H2")){
        $Home23H2 = Invoke-WebRequest("")
        Invoke-Expression $($Home23H2.Content)
        }
        ElseIf(($Windows11 -eq "Home") -or ($Windows11 -eq "home") -and ($W11Ver -eq "24H2")){
        $Home24H2 = Invoke-WebRequest("")
        Invoke-Expression $($Home24H2.Content)
        }
        ElseIf(($Windows11 -eq "Home") -or ($Windows11 -eq "home") -and ($W11Ver -eq "25H2")){
        $Home25H2 = Invoke-WebRequest("")
        Invoke-Expression $($Home25H2.Content)
        }
        
        ElseIf(($Windows11 -eq "Pro") -or ($Windows11 -eq "pro") -and ($W11Ver -eq "21H2")){
        $Pro21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Manual/Windows%2011/21H2/Pro.ps1")
        Invoke-Expression $($Pro21H2.Content)
        }
        ElseIf(($Windows11 -eq "Pro") -or ($Windows11 -eq "pro") -and ($W11Ver -eq "22H2")){
        $Pro22H2 = Invoke-WebRequest("")
        Invoke-Expression $($Pro22H2.Content)
        }
        ElseIf(($Windows11 -eq "Pro") -or ($Windows11 -eq "pro") -and ($W11Ver -eq "23H2")){
        $Pro23H2 = Invoke-WebRequest("")
        Invoke-Expression $($Pro23H2.Content)
        }
        ElseIf(($Windows11 -eq "Pro") -or ($Windows11 -eq "pro") -and ($W11Ver -eq "24H2")){
        $Pro24H2 = Invoke-WebRequest("")
        Invoke-Expression $($Pro24H2.Content)
        }
        ElseIf(($Windows11 -eq "Pro") -or ($Windows11 -eq "pro") -and ($W11Ver -eq "25H2")){
        $Pro25H2 = Invoke-WebRequest("")
        Invoke-Expression $($Pro25H2.Content)
        }

        ElseIf(($Windows11 -eq "ProWorkstations") -or ($Windows11 -eq "proworkstations") -and ($W11Ver -eq "21H2")){
        $ProWorkstations21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Manual/Windows%2011/21H2/ProWorkstations.ps1")
        Invoke-Expression $($ProWorkstations21H2.Content)
        }
        ElseIf(($Windows11 -eq "ProWorkstations") -or ($Windows11 -eq "proworkstations") -and ($W11Ver -eq "22H2")){
        $ProWorkstations22H2 = Invoke-WebRequest("")
        Invoke-Expression $($ProWorkstations22H2.Content)
        }
        ElseIf(($Windows11 -eq "ProWorkstations") -or ($Windows11 -eq "proworkstations") -and ($W11Ver -eq "23H2")){
        $ProWorkstations23H2 = Invoke-WebRequest("")
        Invoke-Expression $($ProWorkstations23H2.Content)
        }
        ElseIf(($Windows11 -eq "ProWorkstations") -or ($Windows11 -eq "proworkstations") -and ($W11Ver -eq "24H2")){
        $ProWorkstations24H2 = Invoke-WebRequest("")
        Invoke-Expression $($ProWorkstations24H2.Content)
        }
        ElseIf(($Windows11 -eq "ProWorkstations") -or ($Windows11 -eq "proworkstations") -and ($W11Ver -eq "25H2")){
        $ProWorkstations25H2 = Invoke-WebRequest("")
        Invoke-Expression $($ProWorkstations25H2.Content)
        }

        ElseIf(($Windows11 -eq "Enterprise") -or ($Windows11 -eq "enterprise") -and ($W11Ver -eq "21H2")){
        $Enterprise21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Manual/Windows%2011/21H2/Enterprise.ps1")
        Invoke-Expression $($Enterprise21H2.Content)
        }
        ElseIf(($Windows11 -eq "Enterprise") -or ($Windows11 -eq "enterprise") -and ($W11Ver -eq "22H2")){
        $Enterprise22H2 = Invoke-WebRequest("")
        Invoke-Expression $($Enterprise22H2.Content)
        }
        ElseIf(($Windows11 -eq "Enterprise") -or ($Windows11 -eq "enterprise") -and ($W11Ver -eq "23H2")){
        $Enterprise23H2 = Invoke-WebRequest("")
        Invoke-Expression $($Enterprise23H2.Content)
        }
        ElseIf(($Windows11 -eq "Enterprise") -or ($Windows11 -eq "enterprise") -and ($W11Ver -eq "24H2")){
        $Enterprise24H2 = Invoke-WebRequest("")
        Invoke-Expression $($Enterprise24H2.Content)
        }
        ElseIf(($Windows11 -eq "Enterprise") -or ($Windows11 -eq "enterprise") -and ($W11Ver -eq "25H2")){
        $Enterprise25H2 = Invoke-WebRequest("")
        Invoke-Expression $($Enterprise25H2.Content)
        }

        ElseIf(($Windows11 -eq "EnterpriseVDI") -or ($Windows11 -eq "enterprisevdi") -and ($W11Ver -eq "21H2")){
        $EnterpriseVDI21H2 = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Manual/Windows%2011/21H2/EnterpriseVDI.ps1")
        Invoke-Expression $($EnterpriseVDI21H2.Content)
        }
        ElseIf(($Windows11 -eq "EnterpriseVDI") -or ($Windows11 -eq "enterprisevdi") -and ($W11Ver -eq "22H2")){
        $EnterpriseVDI22H2 = Invoke-WebRequest("")
        Invoke-Expression $($EnterpriseVDI22H2.Content)
        }
        ElseIf(($Windows11 -eq "EnterpriseVDI") -or ($Windows11 -eq "enterprisevdi") -and ($W11Ver -eq "23H2")){
        $EnterpriseVDI23H2 = Invoke-WebRequest("")
        Invoke-Expression $($EnterpriseVDI23H2.Content)
        }
        ElseIf(($Windows11 -eq "EnterpriseVDI") -or ($Windows11 -eq "enterprisevdi") -and ($W11Ver -eq "24H2")){
        $EnterpriseVDI24H2 = Invoke-WebRequest("")
        Invoke-Expression $($EnterpriseVDI24H2.Content)
        }
        ElseIf(($Windows11 -eq "EnterpriseVDI") -or ($Windows11 -eq "enterprisevdi") -and ($W11Ver -eq "25H2")){
        $EnterpriseVDI25H2 = Invoke-WebRequest("")
        Invoke-Expression $($EnterpriseVDI25H2.Content)
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
        Invoke-Expression $($Monthly.Content)
        }
'6'{exit}
    }
    }
    until ($selection -eq '6'){exit}
    }

Show-MainMenu
