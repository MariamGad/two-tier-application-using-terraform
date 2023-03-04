module "network"{
    source="../modules/network"
    vpc_id=var.vpc_id
    subnets=var.subnets
    route_table_name=var.route_table_name
    internet_gw_name=var.internet_gw_name
}