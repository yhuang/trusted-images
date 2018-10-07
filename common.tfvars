apis = [
  "cloudbilling.googleapis.com",
  "cloudresourcemanager.googleapis.com",
  "iam.googleapis.com",
  "serviceusage.googleapis.com",

  "compute.googleapis.com",
  "oslogin.googleapis.com",
]

availability_zones = {
  "us-west1" = [
    "us-central1-a",
    "us-central1-b",
  ]
  "us-central1" = [
    "us-central1-b",
    "us-central1-f",
  ]
  "us-east1" = [
    "us-central1-c",
    "us-central1-d",
  ]
  "us-east4" = [
    "us-central1-a",
    "us-central1-b",
  ]
}

byte_length = 4

known_ips = {
  "all" = "0.0.0.0/0"
}

machine_type = "f1-micro"

network_tier = "STANDARD"

project_name_base = "trusted-images"

region = "us-central1"

regions = {
  "us-west1"    = "us-west1"
  "us-central1" = "us-central1"
  "us-east1"    = "us-east1"
  "us-east4"    = "us-east4"
}

scopes = {
  "all-api-access" = "https://www.googleapis.com/auth/cloud-platform"
}

service_accounts = {
  "terraform-admin"        = "terraform-service-user@terraform-org-admin.iam.gserviceaccount.com"
}

states_bucket_base = "terraform-states"

subnetwork_cidr_ranges = {
  "us-west1"    = "10.128.0.0/24"
  "us-central1" = "10.129.0.0/24"
  "us-east1"    = "10.130.0.0/24"
  "us-east4"    = "10.131.0.0/24"
}
