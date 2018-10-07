resource "google_compute_network" "trusted_images" {
  auto_create_subnetworks = "false"
  name                    = "${var.project_name_base}"
  project                 = "${local.project_id}"
}

resource "google_compute_subnetwork" "trusted_images_us_west1" {
  name          = "${var.project_name_base}-${local.us_west1}"
  ip_cidr_range = "${var.subnetwork_cidr_ranges[local.us_west1]}"
  region        = "${local.us_west1}"
  project       = "${local.project_id}"
  network       = "${google_compute_network.trusted_images.self_link}"
}

resource "google_compute_subnetwork" "trusted_images_us_central1" {
  name          = "${var.project_name_base}-${local.us_central1}"
  ip_cidr_range = "${var.subnetwork_cidr_ranges[local.us_central1]}"
  region        = "${local.us_central1}"
  project       = "${local.project_id}"
  network       = "${google_compute_network.trusted_images.self_link}"
}

resource "google_compute_subnetwork" "trusted_images_us_east1" {
  name          = "${var.project_name_base}-${local.us_east1}"
  ip_cidr_range = "${var.subnetwork_cidr_ranges[local.us_east1]}"
  region        = "${local.us_east1}"
  project       = "${local.project_id}"
  network       = "${google_compute_network.trusted_images.self_link}"
}

resource "google_compute_subnetwork" "trusted_images_us_east4" {
  name          = "${var.project_name_base}-${local.us_east4}"
  ip_cidr_range = "${var.subnetwork_cidr_ranges[local.us_east4]}"
  region        = "${local.us_east4}"
  project       = "${local.project_id}"
  network       = "${google_compute_network.trusted_images.self_link}"
}
