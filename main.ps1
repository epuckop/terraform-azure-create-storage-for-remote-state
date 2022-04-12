$resource_group_name = ''
$resource_location = ''
$resource_tag = @()
$storage_account_name = ''
$target_subscription = ''

# Switch to the needed subscription
az account set --subscription $target_subscription

# create resource group
az group create --name $resource_group_name --location $resource_location --tags $resource_tag

# create storage account
az storage account create --name $storage_account_name --resource-group $resource_group_name --kind StorageV2 --sku Standard_LRS --https-only true --allow-blob-public-access false --tags $resource_tag