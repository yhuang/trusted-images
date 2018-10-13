resource "random_id" "string" {
  byte_length = "${var.byte_length}"
}

locals {
  billing_account            = "${data.google_project.terraform_admin.billing_account}"
  org_id                     = "${data.google_project.terraform_admin.org_id}"
  terraform_admin_project_id = "${data.google_project.terraform_admin.project_id}"
  trusted_images_project_id  = "${var.project_name_base}-${random_id.string.hex}"
}
