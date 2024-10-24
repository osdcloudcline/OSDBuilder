$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript -Path $ISOLog

$W1123H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\23H2\22631.3668.240510-1748.23H2_NI_RELEASE_SVC_PROD2_CLIENTMULTI_X64FRE_EN-US.iso" -IsValid)
If($W1122H2 -eq $true){
$ISOPath = "C:\ISOs\OS\Clients\Win11\23H2\22631.3668.240510-1748.23H2_NI_RELEASE_SVC_PROD2_CLIENTMULTI_X64FRE_EN-US.iso"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}
ElseIf($W1123H2 -eq $false){
}
Stop-Transcript