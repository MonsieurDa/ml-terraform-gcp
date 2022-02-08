# Deploying ML API on GCP containers registry using Terraform and Github actions 

[![ml-terraform-gcp](https://github.com/MonsieurDa/ml-terraform-gcp/actions/workflows/cloudrun.yml/badge.svg?branch=master)](https://github.com/MonsieurDa/ml-terraform-gcp/actions/workflows/cloudrun.yml)


# This repo is an example of how to use terraform to deploy GCE services
### before using this repo you have to : 

* 1 - create a service account and grant it "owner" role. (Note that it is recommended to use least privilege IAM role principle.)

* 2 - Enable GCP project billing 

* 3 - Create github secrets for the GCP Service Account Key and GCP Service Account Email

* 4 - Create a bucket to store terraform state files

* 5 and 5 can be done by adding this line in providers.tf file : services   = ["iam.googleapis.com", "cloudresourcemanager.googleapis.com"]

####  PS : Once the API deployed on cloud run, you have to allow unauthenticated invocations, add "allUsers" as a principal and assign it the "Cloud Run invoker" role to allow public url access. This can be done in https://console.cloud.google.com/run on permissions window.

