provider "google" {
  credentials = "${file("../secrets/accounts/key.json")}"
  project     = "${var.project_id}"
  region      = "${var.region}"
}

