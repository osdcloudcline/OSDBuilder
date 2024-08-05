Write-Host '                                                '  -BackgroundColor White
Write-Host '   OSDBuilder is a tool that allows users to    '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   import both client & server operating system '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   DVD ISO images to customize, update,         '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   remove editions, remove built in apps,       '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   add drivers, packages, scripts, extra files, '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '   WinPE Powershell Mods & Start Menu layout    '  -ForegroundColor DarkBlue  -BackgroundColor White
Write-Host '                                                '  -BackgroundColor White
Write-Host '   WARNING: OSDBuilder consumes a large amount  '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '   disk space during customization, so DO NOT   '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '   use your Windows OS Drive (C:\)              '  -ForegroundColor DarkRed  -BackgroundColor White
Write-Host '                                                '  -BackgroundColor White
pause

Write-Host "Checking for OSDBuilder updates..." -ForegroundColor Cyan
Get-OSDBuilder
Write-Host "Updating OSDBuilder..." -ForegroundColor Cyan
OSDBuilder -Update
Write-Host "OSDBuilder has been updated..." -ForegroundColor Cyan


$OSDBuilderPath = Read-Host -Prompt 'Please enter a path other than on Drive C: to use as a temporary working directory'
OSDBuilder -SetPath $OSDBuilderPath 

