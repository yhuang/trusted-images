# Trusted Images

#### Required Software

- [Google Cloud SDK](https://cloud.google.com/sdk/docs/quickstarts)
- [jq](https://stedolan.github.io/jq/download)
- [Terraform](https://www.terraform.io/downloads.html)
- [Terragrunt](https://github.com/gruntwork-io/terragrunt/releases)

#### Quickstart Guide

  1. Deploy your [Terraform Admin project](https://github.com/yhuang/terraform-admin).

  2. Configure `gcloud` to use your Terraform Admin service account key:
  ```
  $ gcloud auth activate-service-account --key-file <Path to the Terraform Admin service account key>
  ```

  3. Obtain the name of the GCS bucket created by the Terraform Admin project that is dedicated to persist the Terraform states of your Trusted Images project.  From the Terraform Admin project's root directory:
  ```
  $ terragrunt show
  .
  .
  .
  Outputs:

  terraform_states_buckets = [
    trusted-images-terraform-states,
    dev-forseti-security-terraform-states
  ]
  ```
  The output of the `terragrunt show` command will depend on your Terraform Admin project deployment.

  4. Set the following environment variables in the Trusted Images repo's `trusted-images.env` file to fit your Trusted Images project deployment:
  ```
  GOOGLE_APPLICATION_CREDENTIALS=<path to the Terraform Admin service account key>
  TERRAFORM_ADMIN_PROJECT_NAME=<your Terraform Admin project name (not its project ID)>
  TF_VAR_trusted_images_states_bucket=<your Trusted Images states bucket name>
  ```

  5. From the Trusted Images repo's root directory, export the updated environment variables:
  ```
  $ source trusted-images.env
  ```

  6. At this point, Terragrunt should be able bootstrap the rest of the way to a fully functional Trusted Images environment that may be used to build the Forseti Security image.  From the Trusted Images repo's root directory:
  ```
  $ cd components

  # Review what Terragrunt will do
  $ terragrunt plan-all

  # Execute
  $ terragrunt apply-all
  ```
