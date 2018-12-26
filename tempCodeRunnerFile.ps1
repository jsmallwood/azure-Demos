New-AzureRmResourceGroup -Name 'rg-KeyVault-CentralUS' -Location 'Central US'

New-AzureRmResourceGroupDeployment -Name 'keyVault-Deployment-1' `
    -ResourceGroupName 'rg-KeyVault-CentralUS' `
    -TemplateUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.json" `
    -TemplateParameterUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.parameters.json"