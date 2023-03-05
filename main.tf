module "network"{
    source="../modules/network"
    vpc_id=var.vpc_id
    public_subnets=var.public_subnets
    private_subnets=var.private_subnets
    route_table_name=var.route_table_name
    internet_gw_name=var.internet_gw_name
}

module "ec2"{
    source="../modules/application"
    instance_type=var.instance_type
    ami=var.ami
    tag_name=var.tag_name
    subnet_id=module.network.subnet_id
    sg_name=var.sg_name
    vpc_id=var.vpc_id
    depends_on = [
    module.network
  ]  
}