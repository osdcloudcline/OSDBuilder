$source = "C:\ISOs\OS\Clients\Win11\21H2"
$WIMSource = "$source\Windows11Enterprise-21H2.wim"
$destination = "C:\Mount"

New-Item -Path "C:\Mount" -ItemType Directory 

Write-Verbose "Mounting Windows 11 Enterprise 21H2 image for editing..." -Verbose

Mount-WindowsImage -ImagePath $WIMSource -Index 1 -Path $destination 

