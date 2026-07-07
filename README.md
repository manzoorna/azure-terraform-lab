# Azure Terraform Lab – Infrastructure as Code (IaC) on Microsoft Azure

## Project Overview

The **Azure Terraform Lab** is an end-to-end Infrastructure as Code (IaC) project demonstrating the deployment, automation, and management of Azure infrastructure using **Terraform**, **Azure Verified Modules (AVM)**, and **Bicep**.

The project follows Infrastructure as Code best practices by implementing reusable Terraform modules, remote state management, CI/CD automation using **GitHub Actions** and **Azure DevOps Pipelines**, and modern Azure deployment techniques.

This repository serves as both a learning project and a portfolio demonstrating practical Azure Infrastructure Engineering and DevOps skills.

---

# Solution Architecture

The solution automates the provisioning and management of Azure resources through Terraform and Bicep while integrating continuous validation and deployment pipelines.

### Components

* GitHub Repository
* GitHub Actions (Terraform CI)
* Azure DevOps Pipeline
* Terraform
* Azure Verified Modules (AVM)
* Azure Bicep
* Azure Resource Group
* Azure Storage Account
* Azure Virtual Network
* Azure Network Security Group
* Azure Linux Virtual Machine
* Azure Storage Account (Terraform Remote State)

Deployment Flow:

```
GitHub
   │
   ▼
GitHub Actions
   │
   ▼
Terraform
   │
   ├── Resource Group
   ├── Storage Account
   ├── Virtual Network
   ├── Network Security Group
   └── Linux Virtual Machine

Azure DevOps
   │
   ▼
Terraform Pipeline

Bicep
   │
   ▼
Azure Deployment
```

---

# Features

* Modular Terraform architecture
* Remote Terraform State using Azure Storage
* Azure Linux Virtual Machine deployment
* Azure Virtual Network configuration
* Network Security Group deployment
* Azure Storage Account deployment
* GitHub Actions CI workflow
* Azure DevOps Pipeline integration
* Azure Verified Module (AVM) implementation
* Azure Bicep deployment example
* Reusable Infrastructure as Code
* Infrastructure validation and planning
* Automated deployment workflow
* Enterprise-style project structure

---

# Repository Structure

```
azure-terraform-lab/
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── terraform.tfvars
│   └── backend.tf
│
├── modules/
│   ├── resource-group/
│   ├── storage-account/
│   ├── virtual-network/
│   ├── network-security-group/
│   └── linux-vm/
│
├── avm-demo/
│
├── bicep/
│   ├── modules/
│   ├── main.bicep
│   └── parameters.json
│
├── .github/
│   └── workflows/
│
├── ado/
│
├── docs/
│
└── README.md
```

---

# Prerequisites

Before using this repository, ensure the following tools are installed:

* Terraform (v1.5 or later)
* Azure CLI
* Git
* Visual Studio Code
* Azure Subscription
* GitHub Account
* Azure DevOps Organization

Recommended VS Code Extensions:

* Terraform
* Azure Tools
* Bicep
* GitHub Actions
* Azure Account

---

# Deployment Guide

## 1. Clone the Repository

```bash
git clone https://github.com/<your-github-username>/azure-terraform-lab.git
cd azure-terraform-lab
```

## 2. Authenticate with Azure

```bash
az login
```

## 3. Initialize Terraform

```bash
cd terraform

terraform init
```

## 4. Validate Configuration

```bash
terraform validate
```

## 5. Review Execution Plan

```bash
terraform plan
```

## 6. Deploy Infrastructure

```bash
terraform apply
```

---

# CI/CD Overview

## GitHub Actions

The repository includes a GitHub Actions workflow that automatically performs:

* Terraform Init
* Terraform Validate
* Terraform Plan

on every push to the main branch.

## Azure DevOps Pipeline

The Azure DevOps pipeline performs:

* Azure Authentication
* Terraform Init
* Terraform Validate
* Terraform Plan

using an Azure Resource Manager service connection.

---

# Azure Bicep Example

The repository includes a dedicated **bicep/** folder demonstrating Infrastructure as Code using Azure Bicep.

Example capabilities include:

* Modular Bicep templates
* Parameterized deployments
* Azure CLI deployment
* Storage Account deployment
* Resource Group–scoped deployments

Example deployment command:

```bash
az deployment group create \
  --resource-group terraform-lab-rg \
  --template-file main.bicep \
  --parameters ./parameters.json
```

---

# Azure Verified Module (AVM) Example

A dedicated **avm-demo/** project demonstrates the use of Microsoft Azure Verified Modules.

The demo showcases:

* AVM Storage Account module
* Module versioning
* Registry-based module sourcing
* Isolated Terraform configuration
* Terraform lifecycle (init, validate, plan, apply, destroy)

---

# Cleanup Instructions

To remove Terraform-managed infrastructure:

```bash
terraform destroy
```

To remove the AVM demo resources:

```bash
cd avm-demo

terraform destroy
```

To remove the Bicep deployment example:

```bash
az storage account delete \
  --name <storage-account-name> \
  --resource-group terraform-lab-rg \
  --yes
```

Always verify that resources have been deleted from the Azure Portal to avoid unnecessary costs.

---

# Troubleshooting

## Common Issues

### Terraform State Lock

**Issue**

```
Error acquiring the state lock
```

**Resolution**

* Verify no active Terraform process is running.
* Break the lease on the Azure Storage state file if required.
* Re-run the Terraform command.

---

### GitHub Actions Waiting During Plan

**Cause**

Terraform waiting for interactive input.

**Resolution**

Ensure all required variables are supplied using:

* terraform.tfvars
* GitHub Secrets

---

### Azure DevOps Authorization Failed (403)

**Cause**

Missing permissions for the service connection.

**Resolution**

Assign the required Azure RBAC role (for example, Contributor or Storage Blob Data Contributor where appropriate) to the service principal or workload identity.

---

### Bicep Scope Error

**Issue**

```
BCP135
```

**Resolution**

Deploy Resource Groups at the subscription scope, or deploy resources into an existing Resource Group using `targetScope = 'resourceGroup'`.

---

# Lessons Learned

This project provided practical experience in:

* Infrastructure as Code design
* Modular Terraform development
* Azure networking fundamentals
* Remote state management
* CI/CD pipeline implementation
* GitHub Actions automation
* Azure DevOps integration
* Azure RBAC and permissions
* Azure Verified Modules
* Azure Bicep
* Infrastructure troubleshooting
* Azure resource lifecycle management

---

# Future Enhancements

Planned improvements include:

* Multi-environment deployments (Dev, Test, Prod)
* Terraform Workspaces
* Private Endpoints
* Azure Key Vault integration
* Managed Identity support
* Azure Monitor and Log Analytics
* Application Gateway
* Azure Firewall
* Virtual Machine Scale Sets
* AKS (Azure Kubernetes Service)
* Policy as Code
* Cost optimization dashboards
* Automated security scanning
* GitHub Actions deployment stages
* Azure DevOps Release Pipelines

---

# Technologies Used

| Category               | Technology                                  |
| ---------------------- | ------------------------------------------- |
| Cloud Platform         | Microsoft Azure                             |
| Infrastructure as Code | Terraform                                   |
| Infrastructure as Code | Azure Bicep                                 |
| Verified Modules       | Azure Verified Modules (AVM)                |
| Version Control        | Git                                         |
| Repository Hosting     | GitHub                                      |
| CI/CD                  | GitHub Actions                              |
| CI/CD                  | Azure DevOps Pipelines                      |
| Identity               | Azure Active Directory (Microsoft Entra ID) |
| Networking             | Azure Virtual Network                       |
| Security               | Network Security Groups                     |
| Compute                | Azure Linux Virtual Machine                 |
| Storage                | Azure Storage Account                       |
| Remote State           | Azure Blob Storage                          |
| Development            | Visual Studio Code                          |
| Command Line           | Azure CLI                                   |

---

# Author

**Manzoor Nayeem**

This repository was created as a hands-on Infrastructure as Code project to demonstrate Azure, Terraform, Azure DevOps, GitHub Actions, Azure Verified Modules, and Bicep capabilities, while following industry best practices for modular design, automation, and CI/CD.

