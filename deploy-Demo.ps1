Connect-AzAccount

#region Management Groups









#endregion

#region Apply Policy


#[Initiative - Production]: Enable Monitoring in Azure Security Center


#endregion







# Deploy Key Vault

New-AzResourceGroup -Name 'rg-KeyVault-CentralUS' -Location 'Central US'

New-AzResourceGroupDeployment -Name 'keyVault-Deployment-1' `
    -ResourceGroupName 'RG-KeyVault-EUS2' `
    -TemplateUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.json" `
    -TemplateParameterUri "https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/KeyVault/azuredeploy.parameters.json" `
    -Debug
# Create Keys





# Create Secrets

# Set the Domain Admin Username
$secretvalue = ConvertTo-SecureString 'Pa$$w0rd' -AsPlainText -Force
$secret = Set-AzureKeyVaultSecret -VaultName 'ContosoKeyVault' -Name 'ExamplePassword' -SecretValue $secretvalue
(Get-AzureKeyVaultSecret -vaultName "Contosokeyvault" -name "ExamplePassword").SecretValueText

# Set the Domain Admin Password
$secretvalue = ConvertTo-SecureString 'Pa$$w0rd' -AsPlainText -Force
$secret = Set-AzureKeyVaultSecret -VaultName 'ContosoKeyVault' -Name 'ExamplePassword' -SecretValue $secretvalue
(Get-AzureKeyVaultSecret -vaultName "Contosokeyvault" -name "ExamplePassword").SecretValueText




New-AzResourceGroupDeployment -Name 'dc-demo-1' `
    -ResourceGroupName 'RG-DomainControllers-EastUS2' `
    -TemplateParameterUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.parameters.json' `
    -TemplateUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.json' `
    -Verbose `
    -Debug