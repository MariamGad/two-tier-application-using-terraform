module "network"{
    source="../modules/network"
    vpc_id=var.vpc_id
    subnets=var.subnets
}