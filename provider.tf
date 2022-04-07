variable "project_name" {
   default = "vykenorse" 
}

variable "new" {
   type = string
}

variable "region" {
  default = "europe-west4-a" # gcloud compute zones list
}

provider "google" {
   #credentials = "${file(".tf-gcp-account.json")}"
   project = "${var.project_name}"
   region = "${var.region}"
}
