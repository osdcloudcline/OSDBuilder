Write-Host "Downloading OS Updates, Feature Updates for Windows 10 Home 10.019045.5073.241016 to $OSDBuilderPath...." -ForegroundColor Cyan
Get-DownOSDBuilder -Download  -GridView -UpdateArch x64 -UpdateBuild 22H2 
Get-DownOSDBuilder -ContentDownload 'OneDriveSetup Production'

pause

Write-Host "Updating Windows 10 Home 10.019045.5073.241016 to $OSDBuilderPath...." -ForegroundColor Cyan

Update-OSMedia -Download -Execute 
pause
