$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog

Function Get-MountOS(){
$ISOPath = "C:\ISOs\OS\Clients\Win10\22H2\19045.5073.241016-1410.22H2_RELEASE_SVC_PROD3_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}

$W1022H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win10\22H2\19045.5073.241016-1410.22H2_RELEASE_SVC_PROD3_CLIENTMULTI_X64FRE_EN-US.iso" -IsValid)
If($W1022H2 -eq $true){
Get-MountOS
}
ElseIf($W1022H2 -eq $false){
}

Write-Host "Installing OSDBuilder Module..." -ForegroundColor Cyan
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Write-Host
Write-Host "Importinmg OSDBuilder Module..." -ForegroundColor Cyan
Import-Module -Name OSDBuilder -Force

Stop-Transcript
