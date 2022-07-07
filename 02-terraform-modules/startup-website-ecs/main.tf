# configure aws provider
provider "aws" {
 region = var.region
 # profile =  
}

# Create vpc
module "vpc" {
 source                        = "../modules/vpc"
 region                        = var.region
 vpc_cidr                      = var.vpc_cidr
 project_name                  = var.project_name
 public_web_subnet_az1_cidr    = var.public_web_subnet_az1_cidr
 public_web_subnet_az2_cidr    = var.public_web_subnet_az2_cidr
 private_app_subnet_az1_cidr   = var.private_app_subnet_az1_cidr
 private_app_subnet_az2_cidr   = var.private_app_subnet_az2_cidr
 private_data_subnet_az1_cidr  = var.private_data_subnet_az1_cidr
 private_data_subnet_az2_cidr  = var.private_data_subnet_az2_cidr

}

