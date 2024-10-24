$OSDBuilderPath = Read-Host -Prompt 'Please specify the working directory for OSDBuilder' 
Write-Verbose "Setting OSDBuilder working directory..." -Verbose
Get-OSDBuilder -SetPath $OSDBuilderPath
Get-OSDBuilder -CreatePath
Get-OSDBuilder
