# output "external_ip_nlb" {
#   value = yandex_compute_instance.nlb.network_interface.0.nat_ip_address
# }

output "external_ip_node1" {
  value = yandex_compute_instance.node1.network_interface.0.nat_ip_address
}

# output "external_ip_node2" {
#   value = yandex_compute_instance.node2.network_interface.0.nat_ip_address
# }
# output "external_ip_node3" {
#   value = yandex_compute_instance.node3.network_interface.0.nat_ip_address
# }
# output "external_ip_node4" {
#   value = yandex_compute_instance.node4.network_interface.0.nat_ip_address
# }
output "external_ip_master1" {
  value = yandex_compute_instance.master1.network_interface.0.nat_ip_address
}

# output "external_ip_master2" {
#   value = yandex_compute_instance.master2.network_interface.0.nat_ip_address
# }

# output "external_ip_master3" {
#   value = yandex_compute_instance.master3.network_interface.0.nat_ip_address
# }