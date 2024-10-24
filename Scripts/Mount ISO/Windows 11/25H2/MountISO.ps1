$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Function Get-MountOS(){
$ISOPath = "C:\ISOs\OS\Clients\Win11\25H2\.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}

Start-Transcript -Path $ISOLog

$W1125H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\24H2\.iso" -IsValid)
If($W1125H2 -eq $true){
Get-MountOS
}
ElseIf($W1125H2 -eq $false){
}

Write-Host "Installing OSDBuilder Module..." -ForegroundColor Cyan
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Write-Host
Write-Host "Importinmg OSDBuilder Module..." -ForegroundColor Cyan
Import-Module -Name OSDBuilder -Force

Stop-Transcript
