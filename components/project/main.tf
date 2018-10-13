resource "google_project" "trusted_images" {
  auto_create_network = "false"
  billing_account     = "${local.billing_account}"
  name                = "${var.project_name_base}"
  org_id              = "${local.org_id}"
  project_id          = "${local.trusted_images_project_id}"
}
