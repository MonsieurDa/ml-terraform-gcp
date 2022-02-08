# ressources
resource "google_project_service" "crm_api" {
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "iam_api" {
  service = "iam.googleapis.com"
}

# modules
module "cloudrun" {
  source           = "../../modules/cloudrun"
  }

