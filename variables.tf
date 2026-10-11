variable "cloud_ext_net_ips_lookup" {
  description = <<EOT
Map of cloud_ext_net_ips_lookup, attributes below
Optional:
    - service_name
EOT

  type = map(object({
    service_name = optional(string)
  }))
}

