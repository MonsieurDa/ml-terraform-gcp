provider "google" {
    project = var.project_id
}


resource "google_artifact_registry_repository" "my-repo" {
  provider = google-beta
  location = var.location
  image = var.image
  #repository_id = "REPOSITORY"
}


