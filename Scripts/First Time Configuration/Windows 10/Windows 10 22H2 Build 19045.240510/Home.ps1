$OSDBuilderPath = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/OSDBuilder%20Configuration/Setup.ps1")
Invoke-Expression $($OSDBuilderPath.Content)

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2010/22H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)


Write-Host "Importing Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Import-OSMedia -ImageIndex 1 -SkipGrid

pause

Write-Host "Downloading OS Updates, Feature Updates for Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Get-DownOSDBuilder -Download  -GridView -UpdateArch x64 -UpdateBuild 22H2 
pause
Get-DownOSDBuilder -ContentDownload 'OneDriveSetup Production'

pause

Write-Host "Updating Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
pause
Update-OSMedia -Download -Execute 
pause





Write-Host "Creating OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSBuildTask -TaskName "Windows 10 Home 22H2" -CustomName "Win 10 Home 22H2" -EnableNetFX3  -RemoveAppx -SaveAs Task 

pause 

Write-Host "Creating New OS Build: Windows 10 Home 22H2...." -ForegroundColor Cyan
New-OSBuildTask -Download -Execute

Write-Host "Creating OS: Windows 10 Home 22H2 updated DVD ISO...."
New-OSDBuilderISO

pause

Show-OSDBuilderInfo 
