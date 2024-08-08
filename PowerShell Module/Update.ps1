$OSDBModule = "OSDBuilder"
$OSDUpdateModule = "OSD SUS"

Write-Verbose "Updating $OSDBModule and $OSDUpdateModule..." -Verbose
Update-Module -Name OSDBuilder -Force
Update-Module -Name OSDSUS -Force
Write-Host
Write-Verbose "Updating $OSDBModule and $OSDUpdateModule completed..." -Verbose

Import-Module -Name OSDBuilder -Force
Import-Module -Name OSDSUS -Force
