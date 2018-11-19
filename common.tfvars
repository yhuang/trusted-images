apis = [
  "cloudbilling.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "serviceusage.googleapis.com",

  "iam.googleapis.com",
  "iamcredentials.googleapis.com",

  "compute.googleapis.com",
  "oslogin.googleapis.com",
]

byte_length = 4

known_ips = {
  "all" = "0.0.0.0/0"
}

network_tier = "STANDARD"

project_name_base = "trusted-images"

region = "us-central1"

regions = {
  "us-west1"    = "us-west1"
  "us-central1" = "us-central1"
  "us-east1"    = "us-east1"
  "us-east4"    = "us-east4"
}

subnetwork_cidr_ranges = {
  "us-west1"    = "10.128.0.0/24"
  "us-central1" = "10.129.0.0/24"
  "us-east1"    = "10.130.0.0/24"
  "us-east4"    = "10.131.0.0/24"
}
