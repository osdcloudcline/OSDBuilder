$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog
Function Get-MountOS(){
$ISOPath = "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}

$W1121H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO" -IsValid)
If($W1121H2 -eq $true){
Get-MountOS
}
ElseIf($W1121H2 -eq $false){
$GetOS = Invoke-WebRequest("https://github.com/osdcloudcline/Scripts/raw/refs/heads/main/OS%20Downloads/Windows%2011/21H2/21H2.PS1")
Invoke-Expression $($GetOS.Content)

}

Write-Host "Installing OSDBuilder Module..." -ForegroundColor Cyan
Install-Module -Name OSDBuilder -Force -AllowClobber -SkipPublisherCheck
Set-ExecutionPolicy Unrestricted
Write-Host
Write-Host "Importinmg OSDBuilder Module..." 
Import-Module -Name OSDBuilder -Force


Stop-Transcript
