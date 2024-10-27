$OSDBuilderPath = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/OSDBuilder%20Configuration/Setup.ps1")
Invoke-Expression $($OSDBuilderPath.Content)

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2010/22H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)
