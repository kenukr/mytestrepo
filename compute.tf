resource "google_compute_instance" "test_instance" {
   name = "test-instance"
   machine_type = "e2-micro" # gcloud compute machine-types list
   zone = "${var.region}"
   boot_disk {
      initialize_params {
         image = "debian-cloud/debian-9" # gcloud compute images list
      }
   }
   network_interface {
      network = "default"
      access_config {}
   }
}

