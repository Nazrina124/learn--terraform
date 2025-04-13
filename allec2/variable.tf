


variable "domain_name" {
    default =  "naifah.online."
}

variable "components" {
    default =  {
        frontend = {}
        mongo = {}
        catalogue = {}
        Redis = {}
        User = {}
        cart= {}
        mysql = {}
        shipping = {}
        Rabbitmq = {}
        payment = {}
        Dispatch = {}

    
        }        
     }
