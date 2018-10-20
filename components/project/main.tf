resource "random_id" "string" {
  byte_length = "${var.byte_length}"
}

resource "google_project" "trusted_images" {
  name                = "${var.project_name_base}"

  auto_create_network = "false"
  billing_account     = "${local.billing_account}"
  org_id              = "${local.org_id}"
  project_id          = "${var.project_name_base}-${random_id.string.hex}"
}
