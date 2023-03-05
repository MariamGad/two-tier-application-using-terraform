# **provider**
variable region {}

# **network modules**

# public subnets map
variable "public_subnets" {
    type= map
    description = "creating map of map for public subnets"
    default = {
      sub-1-public = {
         az = ""
         cidr = ""
      }
   }
  
}

# private subnets map
variable "private_subnets" {
    type= map
    description = "creating map of map for private subnets"
    default = {
      sub-1-private = {
         az = ""
         cidr = ""
      }
      sub-2-private = {
         az = ""
         cidr = ""
      }
   }
  
}

variable "vpc_id"{}
variable "internet_gw_name"{}
variable "route_table_name"{}
variable db_subent_group_name{}

# **application module**
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

# ** database module**
variable db_allocated_storage{
    description= "Amount of storage to allocate for DB instance"
}

variable db_name{
    description= "Name for the database on DB instance."
}

variable db_engine{
    description="Database engine to be used"
}

variable db_engine_version{
    description="Version of database engine you want to use."
}

variable db_instance_class{
    description="Configuration for DB instance"
}

variable db_username{
    description="Database username"
}
variable db_password{
    description ="Database password"
}

variable db_final_snapshot{
    description = "to skip final snapshot"
}