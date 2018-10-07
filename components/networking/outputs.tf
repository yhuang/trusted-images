output "network_self_link" {
  value = "${google_compute_network.trusted_images.self_link}"
}

output "subnetwork_us_west1_self_link" {
  value = "${google_compute_subnetwork.trusted_images_us_west1.self_link}"
}

output "subnetwork_us_central1_self_link" {
  value = "${google_compute_subnetwork.trusted_images_us_central1.self_link}"
}

output "subnetwork_us_east1_self_link" {
  value = "${google_compute_subnetwork.trusted_images_us_east1.self_link}"
}

output "subnetwork_us_east4_self_link" {
  value = "${google_compute_subnetwork.trusted_images_us_east4.self_link}"
}
