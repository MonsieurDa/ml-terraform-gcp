resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

locals {
  suffix = format("%s-%s", "tf", random_string.launch_id.result)
}

module "cloudrun" {
  source           = "../../modules/cloudrun"
  poject_id   = var.gcp_project_id
  #equired variables
  service_name           = var.service_name
  location               = var.location
  image                  = var.image


}

