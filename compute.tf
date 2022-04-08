resource "google_compute_instance" "test_golang_instance" {
   name = "test-golang-instance"
   machine_type = "e2-micro" # gcloud compute machine-types list
   zone = "${var.region}"
   boot_disk {
      initialize_params {
         image = "debian-cloud/debian-11" # gcloud compute images list
      }
   }
   network_interface {
      network = "default"
      access_config {}
   }
}

