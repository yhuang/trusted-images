resource "google_project_services" "api_services" {
  project = "${google_project.trusted_images.project_id}"

  services = [
    "${var.apis}"
  ]
}
