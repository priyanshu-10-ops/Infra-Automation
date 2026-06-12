# Azure Infrastructure Automation using Terraform

## Overview

This project demonstrates Infrastructure as Code (IaC) principles by provisioning Azure resources using Terraform with a modular architecture. The infrastructure is organized into reusable modules, enabling scalable, maintainable, and environment-specific deployments.

## Objectives

- Automate Azure infrastructure provisioning
- Implement a modular Terraform architecture
- Promote infrastructure reusability and maintainability
- Support environment-specific deployments
- Enable CI/CD-driven infrastructure management

---

## Architecture Components

The infrastructure is composed of the following modules:

| Module | Description |
|----------|----------|
| Resource Group | Creates and manages Azure Resource Groups |
| Networking | Creates Virtual Networks, Subnets, and NSGs |
| Public IP | Manages Azure Public IP resources |
| Compute | Deploys Azure Virtual Machines |
| Key Vault | Stores secrets and sensitive configuration securely |
| SQL Server | Deploys Azure SQL Server instances |
| SQL Database | Deploys Azure SQL Databases |

---

## Project Structure

```text
Infra-Automation/
│
├── environment/
│   └── dev/
│       ├── main.tf
│       ├── provider.tf
│       ├── terraform.tfvars
│       ├── variable.tf
│       └── .terraform.lock.hcl
│
├── modules/
│   ├── azurerm_resource_group/
│   ├── azurerm_networking/
│   ├── azurerm_public_ip/
│   ├── azurerm_compute/
│   ├── azurerm_keyvault/
│   ├── azurerm_sql_server/
│   └── azurerm_sql_database/
│
├── pipelines/
│   └── pipeline.yaml
│
└── .gitignore
```

---

## Prerequisites

The following tools are required before deployment:

- Terraform
- Azure CLI
- Azure Subscription
- Git

---

## Authentication

Authenticate to Azure:

```bash
az login
```

Verify the active subscription:

```bash
az account show
```

Set a specific subscription if required:

```bash
az account set --subscription "<subscription-id>"
```

---

## Deployment

Initialize Terraform:

```bash
terraform init
```

Validate the configuration:

```bash
terraform validate
```

Generate an execution plan:

```bash
terraform plan
```

Deploy the infrastructure:

```bash
terraform apply
```

Destroy the infrastructure:

```bash
terraform destroy
```

---

## CI/CD Pipeline

The repository contains a YAML pipeline definition:

```text
pipelines/pipeline.yaml
```

The pipeline can be extended to automate:

- Terraform Init
- Terraform Validate
- Terraform Plan
- Terraform Apply
- Terraform Destroy

using Azure DevOps or GitHub Actions.

---

## Terraform Concepts Demonstrated

- Modular Infrastructure Design
- Variables and tfvars
- Resource Dependencies
- Environment-Based Configuration
- Azure Provider Configuration
- Infrastructure Reusability
- Infrastructure as Code Best Practices

---

## Future Enhancements

- Remote State Storage using Azure Storage Account
- State Locking
- Azure Bastion Integration
- Virtual Machine Scale Sets
- Azure Monitor Integration
- Multi-Environment Deployments (Dev, QA, Prod)
- Automated CI/CD Workflows

---

## Author

Priyanshu Kumar

DevOps | Azure | Terraform | Docker | Kubernetes

GitHub: https://github.com/priyanshu-10-ops