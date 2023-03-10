#provider
region="eu-west-3"

#network modules
vpc_id="vpc-083250c6d31510606"
public_subnets={
   sub-1-public = {
         az = "euw3-az1"
         cidr = "192.168.105.0/28"
      }
}
private_subnets={
   sub-1-private = {
      az = "euw3-az2"
      cidr = "192.168.105.32/28"
   }
   sub-2-private = {
      az = "euw3-az3"
      cidr = "192.168.105.64/28"
   }
}
internet_gw_name="mariam-IGW"
route_table_name="public-route-table-mariam"
db_subent_group_name="mairma_db_subent_group"

#application module
instance_type="t2.micro"
ami="ami-06b6c7fea532f597e"
tag_name="instance-mariam"
sg_name="mariam-SG"

#database module
db_allocated_storage=10
db_name="mariamDatabase"
db_engine="mysql"
db_engine_version="5.7"
db_instance_class="db.t2.micro"
db_username="admin"
db_password= "adminadmin"
db_final_snapshot= true
db_sg_name="mariam-db-sg"
