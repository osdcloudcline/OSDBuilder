$ISOLog = "C:\Logs\OSDBuilder\MountISO.log"

Start-Transcript

$ISOPath = Read-Host -Prompt 'Please provide path to DVD ISO'
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-DiskImage -ImagePath $ISOPath 
$ISOLetter

Stop-Transcript
