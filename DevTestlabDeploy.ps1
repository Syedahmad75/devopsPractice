Clear-Host
$resourceGroupName = "syedrg1"
$location = "westeurope"
$templateFile = "C:\Users\SyedShah\AzurePractise\devTestLab.json"
$parameterFile="C:\Users\SyedShah\AzurePractise\azuredeploy.parameters.json"


New-AzResourceGroupDeployment `
  -Name devenvironment `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile `
  -verbose
