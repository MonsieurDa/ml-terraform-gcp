## --- REQUIRED PARAMETERS ------------------------------------------------------------------------------------------------

variable "project_id" {
  type        = string
  default     = "ml-terraform-gcp"
  description = "Id of the GCP project"
}

variable "region" {
  type        = string
  default     = "us-west1"
  description = "Region for ressources"
}