resource "google_project_service" "enable_cloud_resource_manager_api" {
  services = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com"]
  disable_dependent_services = true
}

module "cloudrun" {
  source           = "../../modules/cloudrun"
  }

