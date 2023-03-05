#provider
variable region {}

#network modules
variable "subnets" {
    type= map
    description = ""
    default = {
      sub-1-public = {
         az = ""
         cidr = ""
      }
      sub-2-private = {
         az = ""
         cidr = ""
      }
      sub-3-private = {
         az = ""
         cidr = ""
      }
   }
  
}

variable "vpc_id"{}
variable "internet_gw_name"{}
variable "route_table_name"{}

#application module
variable instance_type {
    type = string
}
variable ami {
    type = string
}
variable tag_name {
    type = string
}
variable sg_name{
    type = string
}