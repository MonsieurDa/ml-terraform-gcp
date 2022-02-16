resource "google_container_registry" "registry" {
  project                    = var.project_id
  location                   = var.location
}

resource "google_storage_bucket_iam_member" "viewer" {
  bucket = google_container_registry.registry.id
}