provider "google" {
    project = var.project_id
}


resource "google_container_registry" "my-repo" {
  provider = google-beta
  location = var.location
  image    = var.image
  #repository_id = "REPOSITORY"
}


