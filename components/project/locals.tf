locals {
  billing_account            = "${data.google_project.terraform_admin.billing_account}"
  org_id                     = "${data.google_project.terraform_admin.org_id}"
  trusted_images_project_id  = "${google_project.trusted_images.project_id}"
}
