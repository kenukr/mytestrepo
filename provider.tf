variable "project_name" {
   type = string 
}

variable "new" {
   type = string
}

variable "region" {
  default = "europe-west4-a" # gcloud compute zones list
}

provider "google" {
   project = "${var.project_name}"
   region = "${var.region}"
}
