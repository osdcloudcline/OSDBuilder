$DISMLog = "C:\Logs\OSDBuilder\Manual\Windows11\21H2\Enterprise.log"

Start-Transcript $DISMLog

Write-Host "Updating Windows 11 Enterprise 21H2 Build 22000.2960.240504-2041" -ForegroundColor Cyan 

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2011/21H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)

$ExportOS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/Export%20Images/Windows%2011/21H2/Enterprise/ExtractWIM.ps1")
Invoke-Expression $($ExportOS.Content)

$MountWIM = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/Export%20Images/Windows%2011/21H2/Enterprise/MountWIM.ps1")
Invoke-Expression $($MountWIM.Content)
