$OSDBuilderPath = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/OSDBuilder%20Configuration/Setup.ps1")
Invoke-Expression $($OSDBuilderPath.Content)

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2011/24H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)

Write-Host "Importing Windows 11 Home 24H2 Build 26100.2033.241003-1823 to $OSDBuilderPath...." -ForegroundColor Cyan
Import-OSMedia -ImageIndex 1 -SkipGrid

