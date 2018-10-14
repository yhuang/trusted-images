variable "known_ips" {
  type = "map"
}

variable "project_name_base" {}

variable "regions" {
  type = "map"
}

variable "subnetwork_cidr_ranges" {
  type = "map"
}

# export TF_VAR_trusted_images_states_bucket
variable "trusted_images_states_bucket" {}
