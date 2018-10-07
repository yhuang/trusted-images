terragrunt = {
  remote_state {
    backend = "gcs"
    config {
      bucket  = "trusted-images-terraform-states"
      prefix  = "components/${path_relative_to_include()}"
      credentials = "${get_env("GOOGLE_APPLICATION_CREDENTIALS", "default")}"
      project = "${get_env("TF_VAR_terraform_admin_project_id", "terraform-org-admin")}"
    }
  }

  terraform {
    # Force Terraform to keep trying to acquire a lock for up to 5 minutes
    # if someone else already has the lock.
    extra_arguments "retry_lock" {
      commands = [
        "apply",
        "destroy",
        "import",
        "init",
        "plan",
        "refresh",
        "taint",
        "untaint",
        "validate",
      ]

      arguments = [
        "-lock-timeout=5m",
        "--var-file=${get_tfvars_dir()}/../../common.tfvars",
      ]
    }
  }
}
