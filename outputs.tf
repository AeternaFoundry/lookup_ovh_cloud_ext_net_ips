output "cloud_ext_net_ips_lookup_ext_net_ips" {
  description = "Map of ext_net_ips values across all cloud_ext_net_ips_lookup, keyed the same as var.cloud_ext_net_ips_lookup except keys with no ext_net_ips are omitted"
  value       = { for k, v in data.ovh_cloud_ext_net_ips.cloud_ext_net_ips_lookup : k => v.ext_net_ips if v.ext_net_ips != null && length(v.ext_net_ips) > 0 }
}
output "cloud_ext_net_ips_lookup_service_name" {
  description = "Map of service_name values across all cloud_ext_net_ips_lookup, keyed the same as var.cloud_ext_net_ips_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.ovh_cloud_ext_net_ips.cloud_ext_net_ips_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

