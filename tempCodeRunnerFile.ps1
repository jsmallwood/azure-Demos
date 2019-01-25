New-AzResourceGroupDeployment -Name 'dc-demo-1' `
    -ResourceGroupName 'RG-DomainControllers-EastUS2' `
    -TemplateParameterUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.parameters.json' `
    -TemplateUri 'https://raw.githubusercontent.com/jsmallwood/azure-Demos/master/AzureActiveDirectory/ADForest/azuredeploy.json' `
    -Debug