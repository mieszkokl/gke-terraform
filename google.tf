data "local_file" "credentials_file" {
  filename = "${var.credentials_location}"
}

provider "google" {
  credentials = "${data.local_file.credentials_file.content}"
  project     = "${var.project_id}"
  region      = "europe-west3"
}
