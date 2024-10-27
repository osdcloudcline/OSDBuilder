########################################################## 
# 
# USBUpdate.ps1
#
# A PS Script to update Windows 10 install USB. 
# 
# You are free to edit & share this script as long as
# source TenForums.com is mentioned.
#
# *** Twitter.com/TenForums *** Facebook.com/TenForums ***
# 
# Script by Kari 
# - TenForums.com/members/kari.html
# - Twitter.com/KariTheFinn
# - YouTube.com/KariTheFinn
#
# 'Use-RunAs' function to check if script was launched
# in normal user mode and elevating it if necessary by
# Matt Painter (Microsoft TechNet Script Center)
# https://gallery.technet.microsoft.com/scriptcenter/ 
#
##########################################################

##########################################################
# Checking if PS is running elevated. If not, elevating it
##########################################################   

function Use-RunAs 
{    
    # Check if script is running as Administrator and if not elevate it
    # Use Check Switch to check if admin 
     
    param([Switch]$Check) 
     
    $IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()` 
        ).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator") 
         
    if ($Check) { return $IsAdmin }   
      
    if ($MyInvocation.ScriptName -ne "") 
    {  
        if (-not $IsAdmin)  
          {  
            try 
            {  
                $arg = "-file `"$($MyInvocation.ScriptName)`"" 
                Start-Process "$psHome\powershell.exe" -Verb Runas -ArgumentList $arg -ErrorAction 'stop'  
            } 
            catch 
            { 
                Write-Warning "Error - Failed to restart script elevated"  
                break               
            } 
            exit 
        }  
    }  
} 

Use-RunAs 

##########################################################
# Show short instructions to user
##########################################################   

cls
Write-Host                                                                       
Write-Host ' This script will allow you to extract the ISO and choose the '
Write-Host ' OS WIM file to extract from the install.wim'
Write-Host 
Write-Host
Write-Host 
Write-Host 
Write-Host 
Write-Host '                                                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host ' Notice that you cannot use this script to update an ESD based install' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host ' media like for instance ISO / USB made with Media Creation Tool.     ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host ' You must first convert "install.esd" file to "install.wim". See      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host ' TenForums tutorial "Convert ESD to WIM":                             ' -ForegroundColor DarkBlue -BackgroundColor White -NoNewline
Write-Host ' http://w10g.eu/esd2wim                                               ' -ForegroundColor DarkCyan -BackgroundColor White
Write-Host '                                                                      ' -ForegroundColor DarkBlue -BackgroundColor White
Write-Host
Write-Host ' ' -NoNewline
pause
 

##########################################################
# Prompt user for path to install media (USB drive) or 
# folder where ISO content was copied to.
#
# Using 'while' loop to check that source given by user 
# contains a Windows image, if not user is asked to chek
# path and try again
##########################################################

$WimCount = 0
while ($WimCount -eq 0) {
cls
Write-Host 
Write-Host ' Enter source path. In case you are using a plugged in USB flash'
Write-Host ' drive, simply enter its drive letter followed by : (colon).'
Write-Host
Write-Host ' If the source you are using is a Windows 10 ISO or DVD, enter.'
Write-Host ' path to folder where you copied ISO / DVD content.'
Write-Host 
Write-Host ' Notice please: If your source contains both 32 (x86) and 64 (x64)'
Write-Host ' bit versions, add \x86 or \x64 to source depending on which'
Write-Host ' bit version you want to update.'
Write-Host 
Write-Host ' Examples:'
Write-Host ' - A USB drive, enter its drive letter with colon (D: or F:)'
Write-Host ' - A USB drive with both bit versions, enter D:\x86 or D:\x64'
Write-Host ' - ISO files copied to folder, enter path (D:\ISO_Files)'
Write-Host ' - Dual bit version ISO copied to folder, enter path with bit version'
Write-Host '   (W:\MyISOFolder\x86 or W:\MyISOFolder\x64)' 
Write-Host

$ISOFolder = Read-Host -Prompt ' Enter source, press Enter'
$WimFolder = $ISOFolder

$ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"

    if (Test-Path $ISOPATH -eq $true)
        {
         $ISOPath = "C:\ISOs\OS\Clients\Win11\24H2\26100.2033.241003-1823.GE_RELEASE_SVC_PROD1_CLIENTMULTI_X64FRE_EN-US.ISO"
         $destination = "C:\ISOs\OS\Clients\Win11\24H2\test"
         $MountDrive = Mount-DiskImage -ImagePath $ISOPath
         $Drives = Get-CimInstance Win32_LogicalDisk | Where-Object -Property VolumeName -eq "CCSA_X64FRE_EN-US_DV9" 
         $OSISO = ($Drives).DeviceID
         Copy-Item -Path "$OSISO\*" -Destination $destination -Recurse
         $sourceWIM = "C:\ISOs\OS\Clients\Win11\24H2\test\sources\install.wim"
         $WimFile = Join-Path $destination '\Sources\install.wim'
         Get-WindowsImage -ImagePath $WimFile | Format-Table ImageIndex, ImageName
         $Index = Read-Host -Prompt ' Select edition'
         Export-WindowsImage -SourceImagePath "C:\ISOs\OS\Clients\Win11\24H2\test\sources\install.wim" -SourceIndex $Index -DestinationImagePath $WIMDestination  -DestinationName 'Windows 11 Professional 24H2'
         
        $WimCount = 1
            if (($WIMFolder -match "x86") -or ($WIMFolder -match "x64"))
            {
            $ISOFolder = $ISOFolder -replace "....$" 
            }
        }
    elseif (Test-Path $WimFolder)
        {
        $WimCount = 0
        cls
        Write-Host
        Write-Host ' No Windows image (install.wim file) found'
        Write-Host ' Please check path and try again.'
        Write-Host
        Pause
        }
    else
        {
        $FileCount = 0
        cls
        Write-Host
        Write-Host ' Path'$ISOFolder 'does not exist.'
        Write-Host
        Write-Host ' ' -NoNewline
        Pause
        }
    }

$WimFile = Join-Path $destination '\Sources\install.wim'

##########################################################
# List Windows editions on image, prompt user for
# edition to be updated
##########################################################

cls
Get-WindowsImage -ImagePath $WimFile | Format-Table ImageIndex, ImageName
Write-Host 
Write-Host ' The install.wim file contains above listed Windows editions.'
Write-Host ' Which edition should be updated?'
Write-Host  
Write-Host ' Enter the ImageIndex number of correct edition and press Enter.'
Write-Host ' If this is a single edition Windows image, enter 1.'                                                                     
Write-Host
$Index = Read-Host -Prompt ' Select edition'
        

##########################################################
# Prompt user for folder containing downloaded WU files
# (*.cab and / or *.msu). Again, a 'while' loop is used to
# check folder contains Windows Update files, if not user
# is asked to check path and try again
##########################################################

$FileCount = 0
while ($FileCount -eq 0) {
cls
Write-Host 
Write-Host '  Enter path to folder containing downloaded Windows Update'
Write-Host '  *.cab and / or *.msu files.'
Write-Host 
Write-Host '  Be sure to enter correct path / folder!'
Write-Host                                                                       

$WUFolder = Read-Host -Prompt ' Path to folder containing downloaded Windows Update files'

if (Test-Path $WUFolder)
    {
    $FileCount = (Get-ChildItem $WUFolder\* -Include *.msu,*.cab).Count
    if ($FileCount -eq 0)
        {
        Write-Host
        Write-Host ' No Windows Update files found in given folder.' 
        Write-Host ' Check the path and try again.'
        Write-Host
        Write-Host ' ' -NoNewline
        pause
        }
    }
    else
        {
        $FileCount = 0
        cls
        Write-Host
        Write-Host ' Path'$WUFolder 'does not exist.'
        Write-Host
        Write-Host ' ' -NoNewline
        Pause
        }
  }
$WUFiles = Get-ChildItem -Path "$WUFolder" -Recurse -Include *.cab, *.msu | Sort LastWriteTime 
Write-Host
Write-Host ' Found following' $FileCount 'Windows Update files:'
Write-Host
ForEach ($File in $WUFiles)
    {Write-Host ' '$File}
Write-Host
Write-Host ' ' -NoNewline
pause    

##########################################################
# Ask user which drive should be used for temporary 
# working folder 'Mount'. If 'Mount' exists on selected
# drive, delete and recreate it.
##########################################################

cls
Write-Host
[System.IO.DriveInfo]::GetDrives() | Where-Object {$_.DriveType -eq 'Fixed'} | Format-Table @{n='Drive ID';e={($_.Name)}}, @{n='Label';e={($_.VolumeLabel)}}, @{n='Free (GB)';e={[int]($_.AvailableFreeSpace/1GB)}}
Write-Host
Write-Host ' Above is a list of all hard disk partitions showing available'
Write-Host ' free space on each of them. Select a partition for temporary'
Write-Host ' folder to mount Windows image. Selected partition must have at'
Write-Host ' least 15 GB available free space. Folder will be removed when'
Write-Host ' image has been updated.'
Write-Host
$Drive = Read-Host -Prompt ' Enter drive letter and press Enter'
$Mount = $Drive.SubString(0,1) + ':\Mount'

if (Test-Path $Mount) {Remove-Item $Mount}
$Mount = New-Item -ItemType Directory -Path $Mount

##########################################################
# Mount Windows image in temporary mount folder.
#
# Adding eight empty lines to $EmptySpace variable to be
# used as placeholder to push output below PowerShell
# progressbar which is shown on top. Five empty lines would
# be enough for PowerShell ISE but standard PowerShell will
# need eight lines, otherwise output remains hidden
##########################################################

cls
$EmptySpace = @"



  
 



"@

Write-Host $EmptySpace
Write-Host ' Mounting Windows image. This will take a few minutes.'
Mount-WindowsImage -ImagePath $WimFolder\Sources\install.wim -Index $Index -Path $Mount | Out-Null
Write-Host
Write-Host ' Image mounted.'
Write-Host

##########################################################
# Write updates one by one to Windows image. If OK, add
# update name including KB number to 'WUSuccess.log' file,
# if failed add to 'WUFail.log'
##########################################################

ForEach ($File in $WUFiles)
    {
    Write-Host ' Applying'$File
    
    Add-WindowsPackage -Path $Mount -PackagePath $File.FullName 
    if ($? -eq $TRUE)
        {$File.Name | Out-File -FilePath C:\OSDCloud\Logs\OSUpdates\WUSuccess.log -Append}
     else     
        {$File.Name | Out-File -FilePath C:\OSDCloud\Logs\OSUpdates\WUFail.log -Append}
    }

##########################################################
# Dismount Windows image saving updated install.wim. Using
# $EmptySpace variable again to push output from under
# PowerShell progressbar to visible area under it
##########################################################

cls
Write-Host $EmptySpace
Write-Host ' Dismounting Windows image, saving updated install.wim.'
Write-Host ' This will take a minute or two.'
Dismount-WindowsImage -Path $Mount -Save | Out-Null
cls

##########################################################
# Show updates added to Windows image
##########################################################

if (Test-Path C:\OSDCloud\Logs\OSUpdates\WUSuccess.log)
    {
    Write-Host
    Write-Host ' Following updates successfully added to Windows image: '
    Write-Host
    $LogContent = Get-Content 'C:\OSDCloud\Logs\OSUpdates\WUSuccess.log'
    foreach ($Line in $LogContent)
        {Write-Host ' - '$Line}
    } 
    else
    {
    Write-Host
    Write-Host ' All updates failed, nothing added to Windows image.'
    Write-Host
    Write-Host ' ' -NoNewline
    pause
    exit
    }

##########################################################
# Show failed updates
##########################################################

if (Test-Path C:\OSDCloud\Logs\OSUpdates\WUFail.log)
    {
    Write-Host
    Write-Host ' Following updates could not be added to Windows image: '
    $LogContent = Get-Content 'C:\OSDCloud\Logs\OSUpdates\WUfail.log'
    foreach ($Line in $LogContent)
        {Write-Host ' - '$Line}
    } 
    else
    {
    Write-Host
    Write-Host ' No failed updates.'}

##########################################################
# Delete temporary mount folder
##########################################################

if (Test-Path $Mount) {Remove-Item $Mount}

##########################################################
# End credits
##########################################################

Write-Host                                                                        
Write-Host ' Windows image (install.wim) has been updated.'
Write-Host 
Write-Host ' If your source was a bootable USB drive, it is now updated.'
Write-Host  
Write-Host ' If you started this script by copying Windows install files'
Write-Host ' from an ISO or DVD to a folder on hard disk, it now contains.'
Write-Host ' everything required to create updated ISO image.'
Write-Host 
Write-Host ' Creating ISO tutorial on TenForums:'
Write-Host ' w10g.eu/iso' -ForegroundColor Yellow
Write-Host   
Write-Host ' More Windows 10 tips, tricks, videos & tutorials at'
Write-Host ' TenForums.com' -ForegroundColor Yellow
Write-Host
Write-Host ' * Twitter.com/TenForums * Facebook.com/TenForums * ' -ForegroundColor Yellow
Write-Host 
Write-Host ' Script by Kari'
Write-Host ' - TenForums.com/members/kari.html'
Write-Host ' - Twitter.com/KariTheFinn'
Write-Host ' - YouTube.com/KariTheFinn'
Write-Host  
Write-Host ' Logs were saved on C: drive. They can be opened with Notepad:'
Write-Host ' - C:\WUSuccess.log > lists applied updates'
Write-Host ' - C:\WUFail.log > lists failed updates'
Write-Host




##########################################################
# End of script
##########################################################
