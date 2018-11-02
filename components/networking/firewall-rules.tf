resource "google_compute_firewall" "a_all_to_packer_builder" {
  name    = "a--all--to--packer-builder"
  network = "${local.network_self_link}"
  project = "${local.project_id}"

  direction = "INGRESS"
  priority  = 100

  allow {
    protocol = "tcp"

    ports = [
      "22",
    ]
  }

  source_ranges = [
    "${var.known_ips["all"]}",
  ]

  target_tags = [
    "packer-builder",
  ]
}

resource "google_compute_firewall" "d_all_to_packer_builder" {
  name    = "d--all--to--packer-builder"
  network = "${local.network_self_link}"
  project = "${local.project_id}"

  direction = "INGRESS"
  priority  = 200

  deny {
    protocol = "tcp"
  }

  source_ranges = [
    "${var.known_ips["all"]}",
  ]

  target_tags = [
    "packer-builder",
  ]
}
