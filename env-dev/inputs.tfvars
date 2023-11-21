env               = "dev"
project_name      = "roboshop"
kms_key_id       = "arn:aws:kms:us-east-1:299627189740:key/20d4c346-4cde-4977-b03b-c758bef825a5"
bastion_node_cidr= [ "172.31.29.231/32" ]
prometheus_cidr  = [ "172.31.20.245/32" ]

##vpc
vpc_cidr               = "10.0.0.0/16"
public_subnets         = ["10.0.0.0/24", "10.0.1.0/24"]
web_subnets            = ["10.0.2.0/24", "10.0.3.0/24"]
app_subnets            = ["10.0.4.0/24", "10.0.5.0/24"]
db_subnets             = ["10.0.6.0/24", "10.0.7.0/24"]
azs              = ["us-east-1a", "us-east-1b"]
default_vpc_id   = "vpc-0c863870f98908e1b"
default_vpc_cidr = "172.31.0.0/16"
default_route_table_id = "rtb-06e19adf24654cd7f"
account_no       = "299627189740"

#rds
instance_class   = "db.t3.medium"

#docdb
docdb_instance_count = 1
docdb_instance_class = "db.t3.medium"

## Elasticache
ec_node_type  = "cache.t3.micro"
ec_node_count = 2

# Rabbitmq
rabbitmq_instance_type = "t3.micro"

components = {
  frontend = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 80

  }
  catalogue = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 8080

  }
  cart = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 8080

  }
  user = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 8080

  }
  shipping = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 8080

  }
  payment = {
    count         = 1
    instance_type = "t3.micro"
    app_port      = 8080
  }

  dispatch = {
    count                  = 1
    instance_type          = "t3.micro"
    app_port               = 8080
  }
}


