
variable "instance_type" {
    default = "t3.micro"
}

# variable "security_group_ids" {
#     default = ["sg-09b81f0daabd7b47a"]
# }

# variable "zone_id" {
#     default = "Z03035903COPLEGQ5980F"
# }

variable "domain_name" {
    default =  "naifah.online."
}

variable "components" {
    default =  ["frontend", "Mongo", "catalogue"]
}