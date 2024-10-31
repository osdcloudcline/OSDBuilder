$Log = "C:\Logs\Updates.log"

Start-Transcript

Write-Host "Creating download directories..." -ForegroundColor Green


$OSUpdates = "Windows 11 22H2 October Updates"

$OctoberDestination = "E:\Updates\October"
$OctoberPathTest = (Test-Path -Path $OctoberDestination -IsValid)
If($OctoberPathTest -$false){
Write-Host "Creating download directory..." -ForegroundColor Green
New-Item -Path $OctoberDestination -ItemType Directory
Write-Host
Write-Host "Downloading $OSUpdates..." -ForegroundColor Green
Save-MSCatalogUpdate -Guid "3cbf01aa-02f7-4b95-891f-9e51e94a16ab" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "a9787757-bf1e-4d21-8114-464fd65ea313" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "ec62b239-cf86-4d9c-81ed-e9d24a683ce1" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "53db4e9a-aba4-42ea-ba09-6e1d915bb858" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "3ed787ea-595e-473b-8c54-b642b453a0d6" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "a2f3c67a-b523-40b5-a988-9eb7e9693367" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "670e6b5d-8d90-427b-bd51-5339b6fb3239" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "4cfe55bd-b01c-4fbd-8a62-486789f7fbda" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "f5601a74-ee35-4e6c-b2e2-094a00f28349" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "42f40a9f-7764-4394-a37e-a01a79f91977" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "1f03a4ad-0500-4018-9fbc-5507911f316f" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "31f2846c-5d0a-4339-b3b9-b53771fe6299" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "49f0aa27-0421-4fb0-91fb-877d7482d714" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "25397bdc-0ce4-4915-b8a0-5a24f2dc8e12" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "1c9c1cae-4f5e-44df-a887-f4454ed80851" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
}
ElseIf($OctoberPathTest -eq $true){
Write-Host
Write-Host "Downloading $OSUpdates..." -ForegroundColor Green
Save-MSCatalogUpdate -Guid "3cbf01aa-02f7-4b95-891f-9e51e94a16ab" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "a9787757-bf1e-4d21-8114-464fd65ea313" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "ec62b239-cf86-4d9c-81ed-e9d24a683ce1" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "53db4e9a-aba4-42ea-ba09-6e1d915bb858" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "3ed787ea-595e-473b-8c54-b642b453a0d6" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "a2f3c67a-b523-40b5-a988-9eb7e9693367" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "670e6b5d-8d90-427b-bd51-5339b6fb3239" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "4cfe55bd-b01c-4fbd-8a62-486789f7fbda" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "f5601a74-ee35-4e6c-b2e2-094a00f28349" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "42f40a9f-7764-4394-a37e-a01a79f91977" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "1f03a4ad-0500-4018-9fbc-5507911f316f" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "31f2846c-5d0a-4339-b3b9-b53771fe6299" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "49f0aa27-0421-4fb0-91fb-877d7482d714" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "25397bdc-0ce4-4915-b8a0-5a24f2dc8e12" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
Save-MSCatalogUpdate -Guid "1c9c1cae-4f5e-44df-a887-f4454ed80851" -Destination $OctoberDestination -Language "en-us" -ErrorAction SilentlyContinue -WarningAction SilentlyContinue -InformationAction SilentlyContinue
}

Stop-Transcript
