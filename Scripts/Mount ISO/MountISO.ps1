$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog

$W1121H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO" -IsValid)
If($W1121H2 -eq $true){
$ISOPath = "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISODrive
$ISOLetter

Stop-Transcript
}
