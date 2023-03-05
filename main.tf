module "network"{
    source="../modules/network"
    vpc_id=var.vpc_id
    public_subnets=var.public_subnets
    private_subnets=var.private_subnets
    route_table_name=var.route_table_name
    internet_gw_name=var.internet_gw_name
    db_subent_group_name=var.db_subent_group_name
}

module "application"{
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

module "database"{
    source="../modules/database"
    db_allocated_storage=10
    db_name= var.db_name
    db_engine= var.db_engine
    db_engine_version= var.db_engine_version
    db_instance_class= var.db_instance_class
    db_username= var.db_username
    db_password= var.db_password
    db_final_snapshot=var.db_final_snapshot
    private_subnet_ids=module.network.private-subnet-ids
    depends_on = [
      module.network
    ]
  }