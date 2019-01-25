Connect-AzureRmAccount

# Deploy Key Vault

New-AzureRmResourceGroup -Name 'rg-KeyVault-CentralUS' -Location 'Central US'

New-AzureRmResourceGroupDeployment -Name 'keyVault-Deployment-1' `
    -ResourceGroupName 'rg-KeyVault-CentralUS' `
    -TemplateUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.json" `
    -TemplateParameterUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.parameters.json"


# Create Keys




# Create Secrets





New-AzResourceGroupDeployment -Name 'dc-demo-1' `
    -ResourceGroupName 'RG-DomainControllers-EastUS2' `
    -TemplateParameterUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.parameters.json' `
    -TemplateUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.json' `
    -Verbose `
    -Debug