provider "google" {
  version = "~> 2.7.0"
  project = "${var.project_id}"
  region  = "${var.region}"
}


