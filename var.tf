variable region {}

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