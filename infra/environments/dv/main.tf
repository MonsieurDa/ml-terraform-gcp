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
  # suffix           = local.suffix
  project_id   = var.gcp_project_id
  # vpc_network_name = "default"
  # instance_name    = "gce-module"
  # network_tags     = ["http-server", "https-server"]



  # Required variables
  # service_name           = "<SERVICE NAME>"
  # location               = "<LOCATION>"
  # image                  = "gcr.io/cloudrun/hello"


}

