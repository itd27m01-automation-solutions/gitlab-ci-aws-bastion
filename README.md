# Bastion server terraform module for GitLab CI on AWS

Creates bastion server for GitLab CI on AWS

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.5 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 3.14 |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| environment | The name of used environment | `string` | n/a | yes |
| gitlab\_bastion\_ami | AMI id for infra VMs, Ubuntu 20.04 by default | `string` | `"ami-0885b1f6bd170450c"` | no |
| gitlab\_bastion\_flavor | Flavor for gitlab Gitaly servers | `string` | `"t2.micro"` | no |
| gitlab\_bastion\_sg\_ids | Security group ids for gitlab app servers | `list(string)` | n/a | yes |
| gitlab\_keypair | Key pair name for infra tasks | `string` | n/a | yes |
| gitlab\_public\_subnets | List of private subnets to create servers in | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| gitlab\_bastion\_ip | Public IP of bastion host |

