resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

module "cloudrun" {
  source           = "../../modules/cloudrun"
  poject_id              = var.gcp_project_id
  service_name           = var.service_name
  location               = var.location
  image                  = var.image
  }

