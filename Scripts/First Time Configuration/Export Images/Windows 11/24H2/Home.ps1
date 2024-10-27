$ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
$ISODrive = Get-DiskImage -ImagePath $ISOPath
$ISOLetter = ($ISODrive | Get-Volume).DriveLetter

Mount-WindowsImage -ImagePath $ISOPath -

Export-WindowsImage -SourceImagePath "$ISOLetter\sources\install.wim" -SourceIndex 1 -DestinationName "Windows 11 Home 24H2" -DestinationImagePath "C:\ISOs\OS\Clients\Win11\24H2\WIM Files\Home-24H2.wim"
