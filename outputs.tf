output "subnet_ids" {
  value = [for k, v in module.subnets : v.this.id]
}

output "route_table_ids" {
  value = var.route_table_ids
}