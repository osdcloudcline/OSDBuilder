$ExportOS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/Export%20Images/Windows%2011/24H2/Pro.ps1")
Invoke-Expression $($ExportOS.Content)

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2011/24H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)
