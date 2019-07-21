##############################################
# Function: lookup
##############################################
##############################################
# Variables
##############################################
variable "map_value" {
  type = map(string)

  default = {
    "life"       = "42"
    "universe"   = "6"
    "everything" = "7"
  }
}

variable "empty_map" {
  type = map(string)

  default = {}
}


variable "lookup_key" {
  default = "everything"
}

variable "default_key" {
  default = "Trillian"
}

##############################################
# Resources
##############################################

##############################################
# Outputs
##############################################

# TF-UPGRADE-TODO: In Terraform v0.11 and earlier, it was possible to begin a
# resource name with a number, but it is no longer possible in Terraform v0.12.
#
# Rename the resource and run `terraform state mv` to apply the rename in the
# state. Detailed information on the `state move` command can be found in the
# documentation online: https://www.terraform.io/docs/commands/state/mv.html
output "foo1_map_value_output" {
  value = lookup(var.map_value, var.lookup_key, var.default_key)
}

# TF-UPGRADE-TODO: In Terraform v0.11 and earlier, it was possible to begin a
# resource name with a number, but it is no longer possible in Terraform v0.12.
#
# Rename the resource and run `terraform state mv` to apply the rename in the
# state. Detailed information on the `state move` command can be found in the
# documentation online: https://www.terraform.io/docs/commands/state/mv.html
output "foo2_empty_map_output" {
  value = lookup(var.empty_map, var.lookup_key, var.default_key)
}

#Nested maps not allowed.  
#Will work if you specify a non-existent key and a default value
#output "foo3_nested_map_output" {
#  value = "${lookup(var.nested_map,var.lookup_key,var.default_key)}"
#}
