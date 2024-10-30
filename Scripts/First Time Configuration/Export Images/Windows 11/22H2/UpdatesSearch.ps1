$CumulativeUpdates = Get-MSCatalogUpdate -Search "Windows 11 Version 22H2 for x64 Cumulative" -AllPages
$CumulativeUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-Cumulative.txt"

$SecurityUpdates = Get-MSCatalogUpdate -Search "Windows 11 Version 22H2 for x64 Security" -AllPages
$SecurityUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-Security.txt"

$NET8Updates = Get-MSCatalogUpdate -Search ".Net 8.0 x64 Client" -AllPages
$NET8Updates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-NET8Client.txt"

$NET7Updates = Get-MSCatalogUpdate -Search ".Net 7.0 x64 Client" -AllPages
$NET7Updates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-NET7Client.txt"

$NET6Updates = Get-MSCatalogUpdate -Search ".Net 6.0 x64 Client" -AllPages
$NET6Updates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-NET6Client.txt"

$NET5Updates = Get-MSCatalogUpdate -Search ".Net 7.0 x64 Client" -AllPages
$NET5Updates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-NET5Client.txt"

$MSEdgeUpdates = Get-MSCatalogUpdate -Search "Edge" -AllPages
$MSEdgeUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-Edge.txt"

$PowerShellUpdates = Get-MSCatalogUpdate -Search "PowerShell" -AllPages
$PowerShellUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-PowerShell.txt"

$WACUpdates = Get-MSCatalogUpdate -Search "Windows Admin Center" -AllPages
$WACUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-WindowsAdminCentert.txt"

$AVUpdates = Get-MSCatalogUpdate -Search "Defender Malicious Software" -AllPages
$AVUpdates | Select-Object Title, Guid | Out-File "E:\Updates\Windows11-22H2-NET7Client.txt"
