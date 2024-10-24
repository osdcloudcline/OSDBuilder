$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog

$W1022H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win10\22H2\19045.4472.240510-1751.22H2_RELEASE_SVC_PROD2_CLIENTMULTI_X64FRE_EN-US.iso" -IsValid)
If($W1122H2 -eq $true){
$ISOPath = "C:\ISOs\OS\Clients\Win10\22H2\19045.4472.240510-1751.22H2_RELEASE_SVC_PROD2_CLIENTMULTI_X64FRE_EN-US.iso"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}
ElseIf($W1022H2 -eq $false){
}
Stop-Transcript
