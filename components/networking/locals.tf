locals {
  network_self_link = "${google_compute_network.trusted_images.self_link}"
  project_id        = "${data.terraform_remote_state.trusted_images_project.project_id}"
  states_bucket     = "${var.trusted_images_states_bucket}"
  us_west1          = "${var.regions["us-west1"]}"
  us_central1       = "${var.regions["us-central1"]}"
  us_east1          = "${var.regions["us-east1"]}"
  us_east4          = "${var.regions["us-east4"]}"
}
