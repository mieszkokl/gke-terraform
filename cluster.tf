resource "google_container_cluster" "primary" {
  name               = "${var.container_name}"
  zone               = "${var.zone}"
  initial_node_count = "${var.initial_node_count}"
   
  master_auth {
    username = "${var.auth_user}"
    password = "${var.auth_password}"
  }

  node_config {
    oauth_scopes = [
      "https://www.googleapis.com/auth/compute",
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring"
    ]
  }
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials ${google_container_cluster.primary.name} --zone ${google_container_cluster.primary.zone}"
  }
}

