targetScope = 'resourceGroup'

param storageAccountName string
param location string

module storage './modules/storageAccount.bicep' = {
  name: 'storageDeployment'

  params: {
    storageAccountName: storageAccountName
    location: location
  }
}

output storageName string = storage.outputs.storageName
