module "vpc" {
  source                 = "git::https://github.com/sampleayeeshagithub/tf-module-vpc.git"
  vpc_cidr               = var.vpc_cidr
  env                    = var.env
  public_subnets         = var.public_subnets
  web_subnets            = var.web_subnets
  app_subnets            = var.app_subnets
  db_subnets             = var.db_subnets
  azs                    = var.azs
  account_no             = var.account_no
  default_vpc_id         = var.default_vpc_id
  default_vpc_cidr       = var.default_vpc_cidr
  default_route_table_id = var.default_route_table_id
}