env               = "dev"
project_name      = "roboshop"
kms_key_id       = "arn:aws:kms:us-east-1:299627189740:key/20d4c346-4cde-4977-b03b-c758bef825a5"


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