


variable "domain_name" {
    default =  "naifah.online."
}

variable "components" {
    default =  {
        frontend = {
            instance_type = "t2.micro"
        }
#          catalogue = {
#             instance_type = "t2.micro"
#          }
#         mongo = {
#                     instance_type = "t3.micro"
         }
   }
# }