output "subnet_ids" {
  value = [for k, v in module.subnets : v.this.id]
}