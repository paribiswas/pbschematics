#variable "softlayer_username" {}
variable "softlayer_api_key" {}
variable "softlayer_api_key2" {}
variable "resource_group" {}

provider "ibm" {
  region = "${var_region_name}"
  softlayer_username = "${var.softlayer_username}"
  softlayer_api_key  = "${var.softlayer_api_key}"
}

resource "ibm_resource_group" "resourceGroup"{
  name     = "${var.resource_group}"
}
