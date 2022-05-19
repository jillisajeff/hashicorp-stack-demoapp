variable "name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "region" {
  description = "AWS Region"
  type        = string
}

variable "hcp_region" {
  description = "HCP Region"
  type        = string
  default     = ""
}

variable "key_pair_name" {
  description = "SSH keypair name for Boundary and EKS nodes"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR Block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "hcp_cidr_block" {
  type        = string
  default     = "172.25.16.0/20"
  description = "CIDR block of the HashiCorp Virtual Network"
}

variable "hcp_consul_datacenter" {
  default     = ""
  description = "HCP Consul datacenter name"
  type        = string
}

variable "hcp_consul_public_endpoint" {
  type        = string
  default     = false
  description = "Enable HCP Consul public endpoint for cluster"
}

variable "hcp_vault_public_endpoint" {
  type        = string
  default     = false
  description = "Enable HCP Vault public endpoint for cluster"
}

variable "tags" {
  type        = map(any)
  description = "Tags to add resources"
}

variable "additional_tags" {
  default     = {}
  type        = map(any)
  description = "Tags to add resources"
}

variable "client_cidr_block" {
  type        = list(string)
  description = "Client CIDR block"
  sensitive   = true
}