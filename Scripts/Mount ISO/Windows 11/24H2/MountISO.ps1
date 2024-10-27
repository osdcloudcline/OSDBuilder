$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Function Get-MountOS(){
$ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath
$ISOLetter
}

Start-Transcript -Path $ISOLog

$W1124H2 = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.iso" -IsValid)
If($W1124H2 -eq $true){
Get-MountOS
}
ElseIf($W1124H2 -eq $false){
}

Stop-Transcript
