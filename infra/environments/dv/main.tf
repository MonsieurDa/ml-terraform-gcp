resource "random_string" "launch_id" {
  length  = 4
  special = false
  upper   = false
}

module "cloudrun" {
  source           = "../../modules/cloudrun"
  project                    = var.gcp_project_id
  }

