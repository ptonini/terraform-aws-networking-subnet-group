module "subnets" {
  source                  = "ptonini/networking-subnet/aws"
  version                 = "~> 1.0.0"
  for_each                = toset(var.availability_zones)
  availability_zone       = each.key
  name                    = format("%s%04.0f", var.name, index(var.availability_zones, each.key) + 1)
  vpc_id                  = var.vpc.id
  cidr_block              = cidrsubnet(var.vpc.cidr_block, var.subnet_newbits, index(var.availability_zones, each.key) + var.subnet_offset)
  map_public_ip_on_launch = var.map_public_ip_on_launch
  route_table_ids         = var.route_table_ids
}