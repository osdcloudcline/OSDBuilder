Write-Host
Write-Host "Retriving Windows 10 22H2 Cumulative Updates..." -ForegroundColor Cyan 

$CumulativeUpdates = Get-MSCatalogUpdate -Search "Windows 10 Version 22H2 for x64 Cumulative" -AllPages
$CumulativeUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-Cumulative.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 Security Updates..." -ForegroundColor Cyan 
$SecurityUpdates = Get-MSCatalogUpdate -Search "Windows 10 Version 22H2 for x64 Security" -AllPages
$SecurityUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-Security.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 .NET 8.0 x64 Client Updates..." -ForegroundColor Cyan
$NET8Updates = Get-MSCatalogUpdate -Search ".Net 8.0 x64 Client" -AllPages
$NET8Updates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-NET8Client.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 .NET 7.0 x64 Client Updates..." -ForegroundColor Cyan
$NET7Updates = Get-MSCatalogUpdate -Search ".Net 7.0 x64 Client" -AllPages
$NET7Updates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-NET7Client.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 .NET 6.0 x64 Client Updates..." -ForegroundColor Cyan
$NET6Updates = Get-MSCatalogUpdate -Search ".Net 6.0 x64 Client" -AllPages
$NET6Updates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-NET6Client.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 .NET 5.0 x64 Client Updates..." -ForegroundColor Cyan
$NET5Updates = Get-MSCatalogUpdate -Search ".Net 7.0 x64 Client" -AllPages
$NET5Updates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-NET5Client.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 Microsoft Edge Updates..." -ForegroundColor Cyan
$MSEdgeUpdates = Get-MSCatalogUpdate -Search "Edge" 
$MSEdgeUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-Edge.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 PowerShell Updates..." -ForegroundColor Cyan
$PowerShellUpdates = Get-MSCatalogUpdate -Search "PowerShell" 
$PowerShellUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-PowerShell.txt"

Write-Host
Write-Host "Retriving Windows Admin Center Updates..." -ForegroundColor Cyan
$WACUpdates = Get-MSCatalogUpdate -Search "Windows Admin Center" -AllPages
$WACUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-WindowsAdminCentert.txt"

Write-Host
Write-Host "Retriving Windows 10 22H2 Defender/Anti-Virus Updates..." -ForegroundColor Cyan
$AVUpdates = Get-MSCatalogUpdate -Search "Defender Malicious Software" -AllPages
$AVUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-22H2-AV.txt"

Write-Host
Write-Host "Retriving Windows Admin Center Updates..." -ForegroundColor Cyan
$WACUpdates = Get-MSCatalogUpdate -Search "Windows Admin Center" -AllPages
$WACUpdates | Select-Object Title, Products, Classification, Guid | Out-File "E:\Updates\Windows10\Windows10-23H2-WindowsAdminCentert.txt"
