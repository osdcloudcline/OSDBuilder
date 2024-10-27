$ISOPath = ""
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Export-WindowsImage -SourceImagePath "$ISOLetter\sources\install.wim" -SourceIndex 1 -DestinationName "Windows 11 Home 24H2" -DestinationImagePath "C:\ISOs\OS\Clients\Win11\24H2\WIM Files\Home-24H2.wim"
