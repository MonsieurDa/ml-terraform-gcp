
resource "google_cloud_run_service" "main" {
  # provider                   = google-beta
  project                    = var.project_id
  name                       = var.service_name
  location                   = var.location
  autogenerate_revision_name = var.generate_revision_name

  
  template {
    spec {
      containers {
        image   = var.image
        command = var.container_command
        args    = var.argument
         }
      }
    }
  }



# Create public access
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

# Enable public access 
resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.main.location
  project     = google_cloud_run_service.main.project
  service     = google_cloud_run_service.main.name

  policy_data = data.google_iam_policy.noauth.policy_data
}