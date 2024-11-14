param vnetname string 
param vNetSettings object = {
  addressPrefix: '10.0.0.0/16'
  subnets: [
    {
      name: 'Subnet-1'      
      addressPrefix: '10.0.0.0/24'
      }
    
    {
      name: 'Subnet-2'     
      addressPrefix: '10.0.1.0/24'
    }
  ]
      
}
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'vnet${vnetname}'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: vNetSettings.subnets[0].name
        properties: {
          addressPrefix: vNetSettings.subnets[0].addressPrefix
        }
      }
      {
        name: vNetSettings.subnets[1].name
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
