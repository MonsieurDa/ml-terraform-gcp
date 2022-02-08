
resource "google_cloud_run_service" "main" {
  provider                   = google-beta
  name                       = var.service_name
  location                   = var.location
  autogenerate_revision_name = var.generate_revision_name

  
  template {
    spec {
      containers {
        image   = var.image
        command = var.container_command
        args    = var.argument

        // container
        container_concurrency = var.container_concurrency # maximum allowed concurrent requests 0,1,2-N
        timeout_seconds       = var.timeout_seconds       # max time instance is allowed to respond to a request
        service_account_name  = var.service_account_email

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
  location    = google_cloud_run_service.default.location
  project     = google_cloud_run_service.default.project
  service     = google_cloud_run_service.default.name

  policy_data = data.google_iam_policy.noauth.policy_data
}