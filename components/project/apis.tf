resource "google_project_services" "api_services" {
  project = "${local.trusted_images_project_id}"

  services = [
    "${var.apis}"
  ]
}
