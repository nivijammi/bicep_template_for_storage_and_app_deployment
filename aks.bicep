@allowed([
  'test'
  'prod'
])
param tierType string

var deploymentSettings = {
  test:{
    aksname:'AKS-Test'
    vmSize:'Standard_d2_v4'
    nodes:1
  }
  prod:{
    aksname:'AKS-Prod'
    vmSize:'Standard_D8_v4'
    nodes:3
  }
}

