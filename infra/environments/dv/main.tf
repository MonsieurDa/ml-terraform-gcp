# ressources
resource "google_project_service" "gcp_cr" {
  service = "run.googleapis.com"
}

resource "google_project_service" "crm_api" {
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "iam_api" {
  service = "iam.googleapis.com"
}


# module
module "cloudrun" {
  source           = "../../modules/cloudrun"
  }


# module
module "containerregistry" {
  source           = "../../modules/containerregistry"
  }