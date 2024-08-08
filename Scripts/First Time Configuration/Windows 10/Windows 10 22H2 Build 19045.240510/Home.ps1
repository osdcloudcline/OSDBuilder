


$OSDBuilderPath = Read-Host -Prompt 'Please enter a path other than on Drive C: to use as a temporary working directory'
Get-OSDBuilder -SetPath $OSDBuilderPath 
pause
Get-OSDBuilder -CreatePaths
pause

Write-Host "Importing Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Import-OSMedia -ImageIndex 1 -SkipGrid

pause

Write-Host "Downloading OS Updates, Feature Updates for Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
Get-DownOSDBuilder -Download -GridView -UpdateArch x64 -UpdateBuild 22H2 
pause
Get-DownOSDBuilder -ContentDownload 'OneDriveSetup Production'

Write-Host "Updating Windows 10 Home 10.019045.4472 to $OSDBuilderPath...." -ForegroundColor Cyan
pause
Update-OSMedia -Download -Execute
pause

Write-Host "Creating OSDBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSBuildTask -TaskName "Windows 10 Home 22H2" -CustomName "Win 10 Home 22H2" -EnableNetFX3  -RemoveAppx -SaveAs Task 

pause 

Write-Host "Executing NEW OSBuild Task for: Windows 10 Home 10.019045.4472...." -ForegroundColor Cyan
New-OSBuild -Download -Execute -EnableNetFX -ByTaskName "Windows 10 Home 22H2"


pause

Write-Host "Creating OS: Windows 10 Home 22H2 updated DVD ISO...."
New-OSDBuilderISO

pause

Show-OSDBuilderInfo 
