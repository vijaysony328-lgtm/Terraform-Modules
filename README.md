# Terraform Modules

This repository contains the Terraform modules that I use while working on Azure infrastructure deployments.

Instead of writing the same Terraform code repeatedly, I created reusable modules for commonly used Azure resources. These modules help keep the infrastructure consistent, easier to maintain, and faster to deploy.

## What's included

Currently this repository contains modules for:

- Resource Group
- Virtual Network
- Subnet
- Network Security Group (NSG)
- Storage Account
- Azure Key Vault
- Virtual Machine
- Azure Kubernetes Service (AKS)

More modules will be added as I continue building and improving the repository.

## Repository Structure

```
modules/
    resource-group/
    vnet/
    subnet/
    nsg/
    storage-account/
    key-vault/
    vm/
    aks/

examples/
dev/
prod/
```

## Why I built this

During Azure deployments, I noticed that creating the same resources again and again makes Terraform code difficult to maintain.

To solve this, I started separating resources into reusable modules so that the same code can be used across Development, Test and Production environments with different variable values.

## Example

```hcl
module "resource_group" {
  source   = "./modules/resource-group"

  rg_name  = "rg-demo"
  location = "Central India"
}
```

## Prerequisites

- Terraform 1.x
- Azure Subscription
- Azure CLI
- Service Principal

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

## Future Plan

I will continue adding more Azure modules such as:

- Azure Application Gateway
- Azure Bastion
- Azure Load Balancer
- Azure Firewall
- Azure SQL Database
- Azure Monitor

## Author

Vijay Mishra

Senior Azure DevOps Engineer
