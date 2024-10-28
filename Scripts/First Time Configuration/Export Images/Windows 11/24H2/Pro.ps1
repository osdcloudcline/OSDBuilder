 $ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
 $MountDrive = Mount-DiskImage -ImagePath $ISOPath
 $destination = "C:\ISOs\OS\Clients\Win11\24H2"
 $WIMDestination = "$destination\Windows11Pro-24H2.wim"
 $Drives = Get-CimInstance Win32_LogicalDisk | Where-Object -Property VolumeName -eq "CCSA_X64FRE_EN-US_DV9" 
 $OSISO = ($Drives).DeviceID
 $WIMDir = "C:\ISOs\OS\Clients\Win11\24H2\WIM"
 $WIMDirTest = (Test-Path -Path "C:\ISOs\OS\Clients\Win11\24H2\WIM" -IsValid)
 If($WIMDirTest -eq $true){
 Copy-Item -Path "$OSISO\*" -Destination $destination -Recurse
 $sourceWIM = "C:\ISOs\OS\Clients\Win11\24H2\sources\install.wim"
 Export-WindowsImage -SourceImagePath "C:\ISOs\OS\Clients\Win11\24H2\sources\install.wim" -SourceIndex 3  -DestinationName 'Windows 11 Professional 24H2' -DestinationImagePath $WIMDestination
 $DismountDrive = Dismount-DiskImage -DevicePath \\.\CDROM1
 }
 ElseIf($WIMDirTest -eq $false){
 New-Item -Path "C:\ISOs\OS\Clients\Win11\24H2\WIM" -ItemType Directory
 Copy-Item -Path "$OSISO\*" -Destination $destination -Recurse
 $sourceWIM = "C:\ISOs\OS\Clients\Win11\24H2\sources\install.wim"
 Export-WindowsImage -SourceImagePath "C:\ISOs\OS\Clients\Win11\24H2\sources\install.wim" -SourceIndex 3  -DestinationName 'Windows 11 Professional 24H2' -DestinationImagePath $WIMDestination
 $DismountDrive = Dismount-DiskImage -DevicePath \\.\CDROM1
 }
