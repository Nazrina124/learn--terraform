
variable "instance_type" {
    default = "t2.micro"
}


variable "domain_name" {
    default =  "naifah.online."
}

variable "components" {
    default =  ["frontend", "Mongo", "catalogue"]
}