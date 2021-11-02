Clear-Host
<#
$resourceGroupName= "AppServicePlan"
$webApp = Get-AzWebApp -Name "Webapp-C" -ResourceGroupName $resourceGroupName
Set-AzWebApp -Name $webApp.Name `
             -ResourceGroupName $resourceGroupName `
             -DetailedErrorLoggingEnabled $true `
             -HttpLoggingEnabled $true `
             -RequestTracingEnabled $false `
             -WebSocketsEnabled $false
<#
Get-AzSubscription 
Select-AzSubscription -Default "Azure for Students"
Enable-AzureWebsiteApplicationDiagnostic -Name "Webapp-C" -File -LogLevel Warning
Set-AzDiagnosticSetting -ResourceId "/subscriptions/dd8b9592-5bb1-4385-aee5-125d0376a91b/resourceGroups/AppServicePlan/providers/Microsoft.Web/sites/Webapp-C" -StorageAccountId "/subscriptions/dd8b9592-5bb1-4385-aee5-125d0376a91b/resourceGroups/AppServicePlan/providers/Microsoft.Storage/storageAccounts/tempstorage786" -Enabled $True

 #Get-AzWebApp -Name "Webapp-C" -ResourceGroupName $resourceGroupName
 #Get-AzDiagnosticSetting -ResourceId "/subscriptions/dd8b9592-5bb1-4385-aee5-125d0376a91b/resourceGroups/AppServicePlan/providers/Microsoft.Web/sites/Webapp-C"


$ResourceGroupName = 'AppServicePlan'
$webapps = Get-AzWebApp -ResourceGroupName 'AppServicePlan'
$ResourceName = foreach ($webapp in $webapps) {$webapp.name}
$PropertiesObject = @{
    httpLogs = @{
        fileSystem = @{
            enabled = $TRUE;
            retentionInMb = 35;
            retentionInDays = 7;
        }
    }
  }
      Foreach ($resource in $ResourceName) {
Set-AzResource -Properties $PropertiesObject `
      -ResourceGroupName $ResourceGroupName -ResourceType Microsoft.Web/sites/config `
      -ResourceName "$resource/logs" -ApiVersion 2018-11-01 -Force
      }
    #> 

# get the log setting
$logSetting = Get-AzResource -ResourceGroupName "AppServicePlan" -ResourceType Microsoft.Web/sites/Webapp-C -ResourceName "Webapp-C/logs" -ApiVersion 2016-08-01
$logSetting.Properties.applicationLogs.azureBlobStorage.level = "Error" 
$logSetting.Properties.applicationLogs.azureBlobStorage.sasUrl = "storage account sas token url"
$logSetting.Properties.applicationLogs.azureBlobStorage.retentionInDays = 3
# update the log setting
$result = Set-AzResource -Properties $logSetting.Properties -ResourceGroupName "AppServicePlan" -ResourceType Microsoft.Web/sites/Webapp-C -ResourceName "Webapp-C/logs" -ApiVersion 2016-08-01 -Force