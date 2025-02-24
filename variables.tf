variable "prefix_rg" {
  description = "The prefix of the name"
  type        = string
  default     = "rg"
}

variable "prefix_vnet" {
  description = "The prefix for Subnets"
  type        = string
  default     = "vnet"
}

variable "prefix_snet" {
  description = "The prefix for Subnets"
  type        = string
  default     = "snet"
}

variable "prefix_pdns" {
  description = "The prefix for Private DNS"
  type        = string
  default     = "pdns"
}

variable "deployment_env" {
  description = "Environment for this deployment"
  type        = string
  default     = "prod"
}

variable "env_dev" {
  description = "The QA environment"
  type        = string
  default     = "dev"
}

variable "env_qa" {
  description = "The QA environment"
  type        = string
  default     = "qa"
}

variable "env_prod" {
  description = "The QA environment"
  type        = string
  default     = "prod"
}

variable "region" {
  description = "Region for CG3"
  type        = string
}

variable "region_short" {
  description = "Region for CG3"
  type        = string
}

variable "sub_short_name" {
  description = "The short name for the subscription"
  type        = string
}

variable "tli" {
  description = "The TLI "
  type        = string
}

variable "cg3_env" {
  description = "The Dev environment"
  type        = string
}

variable "competency" {
  description = "The Dev environment"
  type        = string
}

variable "solution_suite" {
  description = "The target solution"
  type        = string
  default     = "cg3"
}

variable "vnet_addr" {
  description = "Cider for vnet"
  type        = string
}

variable "snet_addr_dev" {
  description = "Cider for dev"
  type        = string
}

variable "snet_addr_qa" {
  description = "Cider for qa"
  type        = string
}

variable "snet_addr_prod" {
  description = "Cider for prod"
  type        = string
}

variable "snet_addr_perf" {
  description = "Cider for performance testing"
  type        = string
}

variable "snet_addr_bastion" {
  description = "Cider for bastion"
  type        = string
}

variable "pdns_db_name" {
  description = "Private DNS zone name for Cosmos"
  type        = string
  default     = "privatelink.cg3.azure.com"
}

variable "pdns_kv_name" {
  description = "Private DNS zone name for Blob"
  type        = string
  default     = "privatelink.vaultcore.cg3.azure.net"
}

variable "pdns_blob_name" {
  description = "Private DNS zone name for Blob"
  type        = string
  default     = "privatelink.blob.core.windows.net"
}

variable "pdns_file_name" {
  description = "Private DNS zone name for File"
  type        = string
  default     = "privatelink.file.core.windows.net"
}

