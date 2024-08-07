


$OSDBuilderPath = Read-Host -Prompt 'Please enter a path other than on Drive C: to use as a temporary working directory'
Get-OSDBuilder -SetPath $OSDBuilderPath 
pause
Get-OSDBuilder -CreatePaths
pause

Write-Host "Importing Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Import-OSMedia -ImageIndex 1 -SkipGrid

pause

Write-Host "Downloading OS Updates, Feature Updates and Updating Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Get-DownOSDBuilder -Download -GridView -UpdateArch x64 -UpdateBuild 22H2 -UpdateOS "Windows 10 22H2"
pause
Get-DownOSDBuilder -ContentDownload 'OneDriveSetup Production'

pause
Update-OSMedia -Download -Execute
pause

Write-Host "Creating OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSDBuildTask -TaskName "Windows 10 Home 22H2" -CustomName "Win 10 Home 22H2" -SaveAs Task -EnableNetFX3 

pause 

Write-Host "Executing NEW OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSDBuild -Download -Execute -CreateISO -ByTaskName "Windows 10 Home 22H2"  
