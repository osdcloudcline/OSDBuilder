$ExportOS = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/Export%20Images/Windows%2011/24H2/Pro.ps1")
Invoke-Expression $($ExportOS.Content)

$MountISO = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/Mount%20ISO/Windows%2011/24H2/MountISO.ps1")
Invoke-Expression $($MountISO.Content)

$CustomizeOS = Read-Host -Prompt 'Do you want to automate the process with OSDBuilder, or edit an image manually?(Please enter a, A, auto, Auto, automate or Automate for automated process OR m, M, manual or Manual for manual/interactive process)'

If(($CustomizeOS -eq "automate") -or ($CustomizeOS -eq "Automate") -or ($CustomizeOS -eq "a") -or ($CustomizeOS -eq "A") -or ($CustomizeOS -eq "auto") -or ($CustomizeOS -eq "Auto")){

$ConfigureOSDBuilder = Invoke-WebRequest("https://github.com/osdcloudcline/OSDBuilder/raw/refs/heads/main/Scripts/First%20Time%20Configuration/OSDBuilder%20Configuration/Setup.ps1")
Invoke-Expression $($ConfigureOSDBuilder.Content)

}

ElseIf(($CustomizeOS -eq "manual") -or ($CustomizeOS -eq "Manual") -or ($CustomizeOS -eq "m") -or ($CustomizeOS -eq "M")){



}
