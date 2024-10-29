Install-Module -Name MSCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name MSCatalog -Force
Update-Module -Name MSCatalog -FOrce 

$CUUpdates = Get-MSCatalogUpdate -Search "Cumulative Windows 11 Version 22H2 for x64"
$CUUpdates
$SecUpdates = Get-MSCatalogUpdate -Search "Security Windows 11 Version 22H2 for x64"
$SecUpdates


$Updates

$Destination = Read-Host -Prompt 'Please provide destination directory to save update'
New-Item -Path $Destination -ItemType Directory
Save-MSCatalogUpdate -Update $Updates -Destination $Destination -Verbose -UseBits
