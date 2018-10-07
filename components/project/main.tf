resource "random_id" "string" {
  byte_length = "${var.byte_length}"
}

resource "google_project" "trusted_images" {
  auto_create_network = "false"
  billing_account     = "${data.google_project.terraform_admin.billing_account}"
  name                = "${var.project_name_base}"
  org_id              = "${data.google_project.terraform_admin.org_id}"
  project_id          = "${var.project_name_base}-${random_id.string.hex}"
}
