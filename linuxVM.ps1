Clear-Host
$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. centralus)"
$adminUsername = Read-Host -Prompt "Enter the administrator username"
$sshKey = Read-Host -Prompt "Enter the SSH public key"

New-AzResourceGroup -Name $resourceGroupName -Location "$location"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "C:\Users\SyedShah\AzurePractise\linuxVm.txt" `
    -adminUsername $adminUsername `
    -adminPublicKey $sshKey

 (Get-AzVm -ResourceGroupName $resourceGroupName).name