provider "google" {
    project = "Tribes-internal-service"
    credentials = file("blahblahblah")
    region =  "us-east-1"
    zone = "us-east-1-a"
}

resource "google_compute_instance" "test" {
    name = "DevOps"
    machine_type = "f1-micro"
    zone = "us-east-1-a"
    allow_stopping_for_update = true
    
    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-9"
        }
    }
    network_interface {
      network = "default"
      access_config {
        // test me haha
      }
    }
}

