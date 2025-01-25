variable "instance_count" {}
variable "subnet_id" {}
variable "security_group_ids" {
  type = list(string)
}
