$OSDBModule = "OSDBuilder"

Write-Verbose "Updating $OSDBModule..." -Verbose
Update-Module -Name OSDBuilder -Force
Write-Host
Write-Verbose "Updating $OSDBModule completed..." -Verbose
