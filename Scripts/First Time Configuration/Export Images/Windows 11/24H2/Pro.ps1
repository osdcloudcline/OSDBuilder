 $ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
 $MountDrive = Mount-DiskImage -ImagePath $ISOPath
 $destination = Read-Host -Prompt 'Please enter destination path'
 $WIMDestination = "$destination\WIMFile\Windows11Pro-24H2.wim"
 $Drives = Get-CimInstance Win32_LogicalDisk | Where-Object -Property VolumeName -eq "CCSA_X64FRE_EN-US_DV9" 
 $OSISO = ($Drives).DeviceID
 Copy-Item -Path "$OSISO\*" -Destination $destination -Recurse
 $sourceWIM = "C:\ISOs\OS\Clients\Win11\24H2\sources\install.wim"
 Export-WindowsImage -SourceImagePath "C:\ISOs\OS\Clients\Win11\24H2\test\sources\install.wim" -SourceIndex $Index  -DestinationName 'Windows 11 Professional 24H2' -DestinationImagePath $WIMDestination
        
