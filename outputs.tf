output "subnet_ids" {
  value = module.subnets[*].this.id
}