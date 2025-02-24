locals {
  rg_name        = "${var.prefix_rg}-${var.region_short}-${var.sub_short_name}-${var.tli}-${var.competency}"
  vnet_name      = "${var.prefix_vnet}-${var.region_short}-${var.sub_short_name}-${var.tli}-${var.competency}"
  pdns_name      = "${var.prefix_pdns}-${var.sub_short_name}.${var.tli}.internal"
  pdns_db_name   = var.pdns_db_name
  pdns_kv_name   = var.pdns_kv_name
  pdns_blob_name = var.pdns_blob_name

  snet_name_dev     = "${var.prefix_snet}-${var.region_short}-${var.sub_short_name}-${var.tli}-dev"
  snet_name_qa      = "${var.prefix_snet}-${var.region_short}-${var.sub_short_name}-${var.tli}-qa"
  snet_name_perf    = "${var.prefix_snet}-${var.region_short}-${var.sub_short_name}-${var.tli}-perf"
  snet_name_prod    = "${var.prefix_snet}-${var.region_short}-${var.sub_short_name}-${var.tli}-prod"
  snet_name_bastion    = "AzureBastionSubnet"
  #Tags
  common_tags = {
    Customer    = "MyCust"
    Purpose     = "Test"
    Environment = "Env"
    Suite       = "Project"
    Requestor   = "Project Lead"
    Owner       = "Delivery Manager"
  }
}