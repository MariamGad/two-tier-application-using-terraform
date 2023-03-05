# **provider**
variable region {}

variable vpc_id{
    description="To get vpc id"
}
# **network modules**
# public subnets map
variable public_subnets {
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
variable private_subnets {
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

variable internet_gw_name{
    description="internet gateway name"
}

variable route_table_name{
    description="route table name"
}

variable db_subent_group_name{
    description="database subnet group"
}

# **application module**
variable instance_type {
    type = string
    description="instance class type"
}

variable ami {
    type = string
    description="image for ec2 instance"
}

variable tag_name {
    type = string
    description="name for ec2 instance"
}

variable sg_name{
    type = string
    description="secuirty group name"
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

variable db_sg_name{
    description ="Database security group name"
}