Write-Host "Saving & Adding OSD-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"
$PEPoshModsDir =  "$OSDBuilderPath\ContentPacks\_Global\PEPoshMods\ProgramFiles"

Save-Module -Name OSD -Path $OSPoshModsDir -Verbose
Save-Module -Name OSD -Path $PEPoshModsDir -Verbose
Save-Module -Name PackageManagement -Path $OSPoshModsDir -Verbose
Save-Module -Name PackageManagement -Path $PEPoshModsDir -Verbose
Save-Module -Name Pester -Path $OSPoshModsDir -Verbose
Save-Module -Name PowerShellGet -Path $OSPoshModsDir -Verbose
Save-Module -Name PowerShellGet -Path $PEPoshModsDir -Verbose
Save-Module -Name OSDCloudGUI -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDCloudGUI -Path $PEPoshModDir -Verbose
Save-Module -Name OSDCloudAzure $OSPoshModsDir -Verbose
Save-Module -Name OSDCloudAzure -Path $PEPoshModDir -Verbose
Save-Module -Name OSDUpdate -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDUpdate -Path $PEPoshModsDir -Verbose
Save-Module -Name AutopilotOOBE -Path $OSPoshModsDir -Verbose
Save-Module -Name AutopilotOOBE -Path $PEPoshModsDir -Verbose
Save-Module -Name OSDDrivers -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDDrivers -Path $PEPoshModsDir -Verbose
Save-Module -Name OSDDeploy -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDDeploy -Path $PEPoshModsDir -Verbose
Save-Module -Name OSDSoftware -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDSoftware -Path $PEPoshModDir -Verbose
Save-Module -Name OSDCatalog $OSPoshModsDir -Verbose
Save-Module -Name OSDCatalog -Path $PEPoshModDir -Verbose
Save-Module -Name OSDProgress -Path $OSPoshModsDir -Verbose
Save-Module -Name OSDProgress -Path $PEPoshModDir -Verbose
Save-Module -Name PSWindowsUpdate $OSPoshModsDir -Verbose
Save-Module -Name PSWindowsUpdate -Path $PEPoshModDir -Verbose

Write-Host "Saving & Adding Azure-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"
$PEPoshModsDir =  "$OSDBuilderPath\ContentPacks\_Global\PEPoshMods\ProgramFiles"

Save-Module -Name Azure -Path $OSPoshModsDir -Verbose
Save-Module -Name Azure -Path $PEPoshModDir -Verbose
Save-Module -Name AzureAD -Path $OSPoshModsDir -Verbose
Save-Module -Name AzureAD -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Accounts -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Accounts -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Storage -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Storage -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Resources -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Resources -Path $PEPoshModDir -Verbose
Save-Module -Name Az.KeyVault -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.KeyVault -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Compute -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Compute -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Automation -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Automation -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Network -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Network -Path $PEPoshModDir -Verbose
Save-Module -Name Az.ApiManagement -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.ApiManagement -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Advisor -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Advisor -Path $PEPoshModDir -Verbose
Save-Module -Name Az.AnalysisServices -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.AnalysisServices -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Billing -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Billing -Path $PEPoshModDir -Verbose
Save-Module -Name Az.ApplicationInsights -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.ApplicationInsights -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Cdn -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Cdn -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Batch -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Batch -Path $PEPoshModDir -Verbose
Save-Module -Name Az.Monitor -Path $OSPoshModsDir -Verbose
Save-Module -Name Az.Monitor -Path $PEPoshModDir -Verbose

Write-Host "Saving & Adding Microsoft Graph-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"

Save-Module -Name Microsoft.Graph -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Intune -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Groups -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Users -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Sites -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Mail -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Identity.DirectoryManagement -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.Teams -Path $OSPoshModsDir -Verbose
Save-Module -Name Microsoft.Graph.DeviceManagement-Path $OSPoshModsDir -Verbose

Write-Host "Saving & Adding ESXI and Hyper-V-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"

Save-Module -Name AsBuiltReport.VMware.ESXi -Path $OSPoshModsDir -Verbose
Save-Module -Name EsxiInventoryTools -Path $OSPoshModsDir -Verbose
Save-Module -Name VMwareBaselineCheck -Path $OSPoshModsDir -Verbose
Save-Module -Name WindowsImageBuilder -Path $OSPoshModsDir -Verbose
Save-Module -Name vDocumentation -Path $OSPoshModsDir -Verbose
Save-Module -Name LabBuilder -Path $OSPoshModsDir -Verbose
Save-Module -Name Hyper-V-Backup -Path $OSPoshModsDir -Verbose
Save-Module -Name Hyper-V.Tools -Path $OSPoshModsDir -Verbose
Save-Module -Name Image-Factory -Path $OSPoshModsDir -Verbose
Save-Module -Name HyperVLab -Path $OSPoshModsDir -Verbose
Save-Module -Name AutomatedLab -Path $OSPoshModsDir -Verbose
Save-Module -Name Hyper-VAdministration -Path $OSPoshModsDir -Verbose
Save-Module -Name WindowsImageConverter -Path $OSPoshModsDir -Verbose

Write-Host "Saving & Adding Ubiquiti UNIFI-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"

Save-Module -Name UNIFI -Path $OSPoshModsDir -Verbose

Write-Host "Saving & Adding WiFi-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"
$PEPoshModsDir =  "$OSDBuilderPath\ContentPacks\_Global\PEPoshMods\ProgramFiles"

Save-Module -Name wifiprofilemanagement -Path $OSPoshModsDir -Verbose
Save-Module -Name wifiprofilemanagement -Path $PEPoshModDir -Verbose
Save-Module -Name WiFiProfileManagementDsc -Path $OSPoshModsDir -Verbose
Save-Module -Name WiFiProfileManagementDsc -Path $PEPoshModDir -Verbose
Save-Module -Name WifiTools -Path $OSPoshModsDir -Verbose
Save-Module -Name WifiTools -Path $PEPoshModDir -Verbose

Write-Host "Saving & Adding MECM-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"

Save-Module -Name SCClient -Path $OSPoshModsDir -Verbose
Save-Module -Name SCCMClientActions -Path $OSPoshModsDir -Verbose
Save-Module -Name SCCMStuff -Path $OSPoshModsDir -Verbose

Write-Host "Saving & Adding Utilities-related PowerShell Modules to the OSD Build..." -ForegroundColor Cyan
$OSPoshModsDir = "$OSDBuilderPath\ContentPacks\_Global\OSPoshMods\ProgramFiles"

Save-Module -Name 7Zip4Powershell -Path $OSPoshModsDir -Verbose
