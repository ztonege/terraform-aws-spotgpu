# ----------------------------------------#
#
#       | Terraform Outputs file |
#
# ----------------------------------------#
# File: outputs.tf
# Author: Vithursan Thangarasa (vithursant)
# ----------------------------------------#

output "id" {
  value = ["${aws_instance.aws_dl_on_demand.*.id}"]
}

output "key-name" {
  value = ["${aws_instance.aws_dl_on_demand.*.key_name}"]
}
