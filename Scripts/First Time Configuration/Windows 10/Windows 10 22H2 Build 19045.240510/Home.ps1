Write-Host "Checking for OSDBuilder updates..." -ForegroundColor Cyan
Get-OSDBuilder
Write-Host "Updating OSDBuilder..." -ForegroundColor Cyan
OSDBuilder -Update
Write-Host "OSDBuilder has been updated..." -ForegroundColor Cyan


$OSDBuilderPath = Read-Host -Prompt 'Please enter a path other than on Drive C: to use as a temporary working directory'
OSDBuilder -SetPath $OSDBuilderPath 
OSDBuilder -CreatePaths

Write-Host "Importing Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Import-OSMedia -ImageIndex 1 -SkipGrid

pause

Write-Host "Downloading Feature Updates and Updating Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
OSDBuilder -Download OSMediaUpdates
OSDBuilder -Download FeatureUpdates
OSDBuilder -Download OneDrive
Update-OSMedia -Download -Execute


pause

Write-Host "Downloading OS Updates and Updating Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Get-OSDBuilderDownloads -Download -GridView -UpdateArch x64 -UpdateBuild 22H2 -UpdateOS "Windows 10"

pause

Write-Host "Creating OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSDBuildTask -TaskName "Windows 10 Home 22H2" -CustomName "Win 10 Home 22H2" -SaveAs Task -EnableNetFX3 

Write-Host "Executing NEW OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSDBuild -Download -Execute -CreateISO -ByTaskName "Windows 10 Home 22H2"  
