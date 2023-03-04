#provider
region="eu-west-3"

#network modules
vpc_id="vpc-083250c6d31510606"
subnets={
   sub-1-public = {
         az = "euw3-az1"
         cidr = "192.168.105.0/28"
      }
      sub-2-private = {
         az = "euw3-az2"
         cidr = "192.168.105.32/28"
      }
      sub-3-private = {
         az = "euw3-az3"
         cidr = "192.168.105.64/28"
      }
}
internet_gw_name="mariam-IGW"
route_table_name="public-route-table-mariam"