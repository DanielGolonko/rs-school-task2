# AWS Infrastructure Setup

## Overview

This Terraform configuration sets up the following resources:

- A Virtual Private Cloud (VPC) with public and private subnets in two availability zones.
- A Bastion host for secure SSH access to instances in private subnets.
- A NAT Gateway for instances in the private subnets to access the Internet.
- Security groups for both public and private resources.
- Route tables for managing traffic flow.

## Prerequisites

1. An AWS account.
2. Terraform installed on your local machine.
3. An SSH key pair created in AWS for accessing the Bastion host.

## Files Structure

- `main.tf`: Contains provider configuration and resource definitions.
- `variables.tf`: Defines all necessary variables used in the Terraform configuration.
- `resource.tf`: Contains additional resource definitions, including VPC, subnets, security groups, NAT Gateway, and EC2 instances.

## How to Use

1. **Update `variables.tf`** with your desired CIDR blocks and region.

2. **Ensure your SSH key is available in AWS** and update the `main.tf` to include the key name.

## Bastion Host Access

1. SSH into the Bastion host using

2. From the Bastion host, you can access instances in the private subnet using their private IP addresses.

## NAT Gateway vs NAT Instance

- **NAT Gateway**: Easier to set up and manage but more expensive. Recommended for production environments.
- **NAT Instance**: Cheaper but requires more management. Good for development or small-scale setups.

## Security

- Ensure the public security group only allows SSH access from trusted IP addresses
- The private security group does not allow any direct inbound access from the Internet, only allowing traffic from within the VPC.

## Resource Breakdown

### VPC and Subnets

- **VPC**: Defined in `resource.tf` with a CIDR block as specified in `variables.tf`.
- **Public Subnets**: Two public subnets in different availability zones for the Bastion host and other public resources.
- **Private Subnets**: Two private subnets for secure instances that do not need direct access to the Internet.

### Bastion Host

- An EC2 instance configured in a public subnet to allow secure access to the private instances.

### NAT Gateway

- A NAT Gateway set up in the public subnet to allow instances in private subnets to access the Internet.

### Security Groups

- **Public Security Group**: Allows inbound SSH access from specified IP addresses and HTTP/HTTPS traffic.
- **Private Security Group**: Allows inbound traffic from instances within the same VPC.
