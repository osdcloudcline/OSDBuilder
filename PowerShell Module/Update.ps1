$OSDBModule = "OSDBuilder"

$OSDBuilderCheck = Get-Module -ListAvailable | Where-Object -Property Name -eq "OSDBuilder"
Write-Verbose "Checking if $OSDBModule exists..." -Verbose
If($OSDBuilderCheck -eq $true){
Write-Verbose "Updating $OSDBModule..." -Verbose
Update-Module -Name OSDBuilder -Force
}
ElseIf($OSDBuilderCheck -eq $false){
Write-Verbose "Installing $OSDBModule..." -Verbose
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Write-Host
Write-Verbose "Updating $OSDBModule..." -Verbose
Update-Module -Name OSDBuilder -Force
}
