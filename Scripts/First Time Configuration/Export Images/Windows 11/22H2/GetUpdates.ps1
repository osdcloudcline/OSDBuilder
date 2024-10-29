Install-Module -Name MSCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name MSCatalog -Force
Update-Module -Name MSCatalog -FOrce 

$Updates = Get-MSCatalogUpdate -Search "Windows 11 Version 22H2 for x64"

$Destination = Read-Host -Prompt 'Please provide destination directory to save update'
New-Item -Path $Destination -ItemType Directory
Save-MSCatalogUpdate -Update $Updates -Destination $Destination
