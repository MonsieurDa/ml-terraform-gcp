variable "project_id" {
  type        = string
  default     = "ml-terraform-gcp"
  description = "Id of the GCP project"
}

variable "location" {
  description = "Cloud Run service deployment location"
  type        = string
  default     = "us-west1"
}

variable "imagename" {
  description = "GCR hosted image URL to deploy"
  type        = string
  default     = "myimage"
  }

variable "image" {
  description = "GCR hosted image URL to deploy"
  type        = string
  default     = "gcr.io/var.project_id/var.myimage"
}
