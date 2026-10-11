data "ovh_cloud_ext_net_ips" "cloud_ext_net_ips_lookup" {
  for_each = var.cloud_ext_net_ips_lookup

  service_name = each.value.service_name
}

