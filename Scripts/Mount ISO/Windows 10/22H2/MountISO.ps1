$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog

$W1022H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win10\22H2\19045.4472.240510-1751.22H2_RELEASE_SVC_PROD2_CLIENTMULTI_X64FRE_EN-US.iso" -IsValid)
If($W1122H2 -eq $true){
Get-MountOS
}
ElseIf($W1022H2 -eq $false){
}

Function Get-MountOS(){
$ISOPath = "C:\ISOs\OS\Clients\Win11\21H2\22000.2960.240504-2041.CO_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}
Stop-Transcript
