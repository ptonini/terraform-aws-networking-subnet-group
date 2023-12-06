variable "name" {}

variable "availability_zones" {
  type = list(string)
}

variable "cidr_block" {}

variable "vpc_id" {}

variable "subnet_newbits" {
  default = 8
}

variable "subnet_offset" {
  default = 0
}

variable "map_public_ip_on_launch" {
  default = true
}

variable "tags" {
  default = {}
}

variable "route_table_ids" {
  type    = set(string)
  default = []
}