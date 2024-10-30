Install-Module -Name MSCatalog -Force -AllowClobber -SkipPublisherCheck
Import-Module -Name MSCatalog -Force
Update-Module -Name MSCatalog -FOrce 

$22H2DecemberUpdates = New-Object System.Collections.ArrayList
$22H2DecemberUpdates = @(
"39918a74-0e63-47f7-b913-2e06843ce752",
"d9ea0ee0-ef0f-49ac-9882-1306726dec05",
"3e0fd259-cda4-4ba9-a0da-c9d5f7cd87c6"
)

$22H2NovemberUpdates = New-Object System.Collections.ArrayList
$22H2NovemberUpdates = @(
"4f9d97c5-f042-4eb7-81ee-9d33d5710fd7",
"16b43d9f-f20b-4244-adfa-77dc7420c15e",
"6d39ec8a-799b-475d-b6a7-aa9a1b074356",
"42499212-371a-4458-b03f-614c884c35af"
)

$22H2OctoberUpdates = New-Object System.Collections.ArrayList
$22H2OctoberUpdates = @(
"3cbf01aa-02f7-4b95-891f-9e51e94a16ab",
"a9787757-bf1e-4d21-8114-464fd65ea313",
"ec62b239-cf86-4d9c-81ed-e9d24a683ce1",
"53db4e9a-aba4-42ea-ba09-6e1d915bb858",
"3ed787ea-595e-473b-8c54-b642b453a0d6",
"a2f3c67a-b523-40b5-a988-9eb7e9693367",
"670e6b5d-8d90-427b-bd51-5339b6fb3239",
"4cfe55bd-b01c-4fbd-8a62-486789f7fbda",
"f5601a74-ee35-4e6c-b2e2-094a00f28349",
"42f40a9f-7764-4394-a37e-a01a79f91977",
"1f03a4ad-0500-4018-9fbc-5507911f316f",
"31f2846c-5d0a-4339-b3b9-b53771fe6299",
"49f0aa27-0421-4fb0-91fb-877d7482d714",
"25397bdc-0ce4-4915-b8a0-5a24f2dc8e12",
"1c9c1cae-4f5e-44df-a887-f4454ed80851"
)

$22H2SeptemberUpdates = New-Object System.Collections.ArrayList
$22H2SeptemberUpdates = @(
"f9f0f113-2cae-47f0-ab1e-36910e682899",
"188bfa88-9b89-41e3-bf88-6eb01952da0e",
"7fa675fa-d6d1-4634-9140-b1c32975ec17",
"a525a8b5-1ffa-4b46-bdc9-b93ed068761a",
"7f78d1c1-ca7e-4d8c-a00f-31d2efd0cb5f",
"b1959051-6825-4a1c-8dc5-7974d505040f"
)

$22H2AugustUpdates = New-Object System.Collections.ArrayList
$22H2AugustUpdates = @(
"fd00d356-4d8a-41f4-8f6f-be2cdf35149f",
"8a4773d8-1e43-44dc-8877-efdc2631ce3e",
"37ac4615-6919-4fad-9270-c3da9c83ce67",
"a80a689d-4f11-4a55-8e92-ffdc7d84f582",
"b71c2caa-70f4-4efa-9652-5634788b9713",
"01b8ff52-af2f-44e7-94f7-290656c4fa5a",
"618d65bb-de8b-4e36-b596-fd405fec3a05",
"8a4773d8-1e43-44dc-8877-efdc2631ce3e",
"f778af4d-1ba1-4d47-a100-f35b05aa02b0",
"b71c2caa-70f4-4efa-9652-5634788b9713",
"c9e308b3-7f2d-4ca9-9c84-ffb14eb50eee",
"30f4690e-1b71-469a-a321-14503f03574d",
"b09c2582-09d5-4765-9961-bf455b7d1e9c"

)

$22H2JulyUpdates = New-Object System.Collections.ArrayList
$22H2JulyUpdates = @(
"1f164ca3-3ddc-4876-b5db-3786825b1fc3",
"e3ceb28f-61d8-408d-9880-fe87e53c0687",
"acae581d-b0b0-4afe-b364-c1917809fe42",
"82a393f7-5604-4951-a2cb-ba475b840594",
"724d0dae-699b-47ce-9a20-7b8ee12e3987",
"d35a4a2f-af58-4450-8ffa-d39d8f90a109",
"b641f878-a6f1-4f5d-aa9e-166b0621353a",
"3dacb377-9e0b-4456-b08d-cd217f7511c9",
"3e809bfa-f0b2-4d3c-9dd4-99f1eb047baa",
"72f7e09b-b23b-49e7-9db7-c5f1c57ed664"
)

$22H2JuneUpdates = New-Object System.Collections.ArrayList
$22H2JuneUpdates = @(
"97b8ea7c-81c9-48e1-9c1e-d83889dd5fe7",
"ab1d0f78-012b-46f0-aa39-935fdb28bee1",
"15cddec9-ad48-4f0f-bc76-0f60359a5f6d",
"1055bec6-830f-40f4-bf76-83a16d54772d",
"908da262-f687-48e5-a7ee-1156016369d2",
"d5aff978-0218-4551-893e-577bcb37bbe4",
"b51c5e81-ed9c-4d04-897e-8355f4087287",
"151315e6-b978-42fc-b0ce-6e5c78a69324"
)

$22H2MayUpdates = New-Object System.Collections.ArrayList
$22H2MayUpdates = @(
"8614eedc-3d75-435f-b018-aea7417ebec1",
"6d38b362-32de-40f4-89db-5e0ec87fd843",
"59c7264f-66ca-4b2c-bcf8-ddf9d89fc58d",
"d7d47bfa-d677-467d-a1fe-00572fe4effb",
"bdf84773-817e-440d-bebf-fc0ab62d08ac",
"60a82168-d2e3-40cb-95ff-60044c4d9ed5",
"999973fa-54f0-4c48-9fea-5885a57b2d9a",
"75530cdd-a62c-4855-89e7-a0a2554300f5",
"aed741b6-7c40-46b3-8960-e2491c116c5e",
)

$22H2AprilUpdates = New-Object System.Collections.ArrayList
$22H2AprilUpdates = @(
"0bf9a921-3207-43a9-9237-1db7d6adf61a",
"b2b28fa7-71f1-4c63-82c5-517ace72a607",
"685d80b8-3d5c-4d9e-ade5-97f31f0568e7",
"fa355a42-1250-470a-9067-d939753738cd",
"42811311-e074-471d-866b-4406889e6c14",
"2e40fd26-69aa-4729-84c8-9a6a0c56411a",
"8542e7b4-5d8b-4e45-942a-c75de36ba892",
"87bca70f-4751-408d-bcc3-91472c7203c6"
)

$22H2MarchUpdates = New-Object System.Collections.ArrayList
$22H2MarchUpdates = @(
"b1d7e3bf-25e0-4892-9a10-e3c6a571b009",
"ce0f44c6-ceac-4068-b754-e2feabdbb5c1",
"96d8a0cf-3195-481c-89a4-db0593a1de36",
"ad2aab9d-6c00-4eef-96a4-25497f230173",
"7c63eada-841d-4b70-8099-3c8baf329ec4",
"70a392b7-cb73-462a-996e-063256ad4653"
)

$22H2FebruaryUpdates = New-Object System.Collections.ArrayList
$22H2FebruaryUpdates = @(
"5da9053d-52de-4f55-ab26-93e1776035e6",
"e9248bd7-e53c-4beb-ac80-1b849e415dff",
"7b5c48e2-98e7-4f78-8795-879c1a693f88",
"e95c6bcf-aadb-4d93-a140-6420a85eef66",
"79abd7a3-50ff-457f-b75c-1094176e7507",
"f5bf5124-e10f-443b-87e1-f41edb56ba1a"
)

$22H2JanuaryUpdates = New-Object System.Collections.ArrayList
$22H2JanuaryUpdates = @(
"60459cf9-bcd3-4ec6-b74e-9f000c0873a3",
"b4b978d5-c0fa-4ebf-b81a-48901af4266e",
"437692b3-6c3d-42c1-b75a-58e335346b35",
"321ac36f-3e47-4b8b-a478-f3b4e2acb0e9",
"16fe8db4-a1dd-4e7a-9c12-d0a938afbcd6",
)

$PowerShellUpdates = New-Object System.Collections.ArrayList
$PowerShellUpdates = @(
"115a80f7-907e-4e44-8da2-438a9d365967"
)

$EdgeBrowserUpdates = New-Object System.Collections.ArrayList
$EdgeBrowserUpdates = @(
"e7757512-7a96-45c8-9d38-7c81e966e040",
"c30a8856-f8cb-40aa-89b7-a2a84da39438"
)

$WindowsAdminCenterUpdates = New-Object System.Collections.ArrayList
$WindowsAdminCenterUpdates = @(
"c73883bb-7f89-40ad-ba1e-8ef1279b9543"
)

$WindowsAVUpdates = New-Object System.Collections.ArrayList
$WindowsAVUpdates = @(
"21d92ec3-15e2-44f9-99cd-d46ab34d39c4",
"e61af560-0900-41c3-bc6a-f7273fed819d"
)


$DecemberDestination = "E:\Updates\December"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 December Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2DecemberUpdates -Destination "E:\Updates\December"  -Language "en-us" -UseBits -Verbose

$NovemberDestination = "E:\Updates\November"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 November Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2NovemberUpdates -Destination "E:\Updates\November"  -Language "en-us" -UseBits -Verbose

$OctoberDestination = "E:\Updates\October"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 October Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2OctoberUpdates -Destination "E:\Updates\October"  -Language "en-us" -UseBits -Verbose

$SeptemberDestination = "E:\Updates\September"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 September Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2SeptemberUpdates -Destination "E:\Updates\September"  -Language "en-us" -UseBits -Verbose

$AugustDestination = "E:\Updates\August"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 August Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2AugustUpdates -Destination "E:\Updates\August"  -Language "en-us" -UseBits -Verbose

$JulyDestination = "E:\Updates\July"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 July Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2JulyUpdates -Destination "E:\Updates\July"  -Language "en-us" -UseBits -Verbose

$JuneDestination = "E:\Updates\June"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 June Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2JuneUpdates -Destination "E:\Updates\June"  -Language "en-us" -UseBits -Verbose

$MayDestination = "E:\Updates\May"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 May Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2MayUpdates -Destination "E:\Updates\May"  -Language "en-us" -UseBits -Verbose

$AprilDestination = "E:\Updates\April"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 April Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2AprilUpdates -Destination "E:\Updates\April"  -Language "en-us" -UseBits -Verbose

$MarchDestination = "E:\Updates\March"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 March Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2MarchUpdates -Destination "E:\Updates\March"  -Language "en-us" -UseBits -Verbose

$FebruaryDestination = "E:\Updates\February"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 February Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2FebruaryUpdates -Destination "E:\Updates\February"  -Language "en-us" -UseBits -Verbose

$JanuaryDestination = "E:\Updates\January"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 January Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $22H2JanuaryUpdates -Destination "E:\Updates\January"  -Language "en-us" -UseBits -Verbose

$PowerShellDestination = "E:\Updates\PowerShell"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 PowerShell Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $PowerShellUpdates -Destination "E:\Updates\PowerShell"  -Language "en-us" -UseBits -Verbose

$MSEdgeDestination = "E:\Updates\MSEdge"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 Microsoft Edge browser Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $EdgeBrowserUpdates -Destination "E:\Updates\MSEdge"  -Language "en-us" -UseBits -Verbose

$WindowsAdminCenterDestination = "E:\Updates\WindowsAdminCenter"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 Windows Admin Center Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $WindowsAdminCenterUpdates -Destination "E:\Updates\WindowsAdminCenter"  -Language "en-us" -UseBits -Verbose

$WindowsAVDestination = "E:\Updates\WindowsAV"
New-Item -Path $Destination -ItemType Directory
Write-Host "Downloading Windows 11 22H2 Windows Defender Anti-Virus Updates..." -ForegroundColor Cyan 
Save-MSCatalogUpdate -Guid $WindowsAVUpdates -Destination "E:\Updates\WindowsAV"  -Language "en-us" -UseBits -Verbose