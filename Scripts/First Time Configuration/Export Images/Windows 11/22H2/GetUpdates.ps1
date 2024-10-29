Install-Module -Name MSCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name MSCatalog -Force
Update-Module -Name MSCatalog -FOrce 

$Updates = Get-MSCatalogUpdate -Search "Windows 11 Version 22H2 for x64"

$Destination = Read-Host -Prompt 'Please enter destination directory to save the updates'
New-Tem -Path $Destination -ItemType Directory
Save-MSCatalogUpdate -Update $Update -Destination $Destination
