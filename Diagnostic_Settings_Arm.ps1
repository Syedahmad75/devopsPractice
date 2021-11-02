Clear-Host
$templateFile = "C:\Users\SyedShah\AzurePractise\diagnosticSetting.json"
New-AzResourceGroupDeployment `
  -Name updateDiagnostic `
  -ResourceGroupName AppServicePlan `
  -TemplateFile $templateFile 