Clear-Host
$resourceGroupName = "syedrg1"
$location = "westeurope"
$templateFile = "C:\Users\SyedShah\AzurePractise\vmDevTestlab.json"
$parameterFile="C:\Users\SyedShah\AzurePractise\vmparameters.json"


New-AzResourceGroupDeployment `
  -Name devenvironment `
  -ResourceGroupName $resourceGroupName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile `
  -verbose
