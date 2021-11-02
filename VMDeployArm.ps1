Clear-Host
$resourceGroupName = "syed"
$location = "westeurope"
$adminUsername = "syedahmad751"
$adminPassword = "Batman@78691011"
$dnsLabelPrefix = "abcde"

New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "C:\Users\SyedShah\AzurePractise\vmDeploy.json" `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword `
    -dnsLabelPrefix $dnsLabelPrefix `
    -verbose

 (Get-AzVm -ResourceGroupName $resourceGroupName).name
