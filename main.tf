module "vpc" {
  source = "./modules/aws_vpc" 
  vpc_cidr = var.vpc_cidr
  vpc_tags = var.vpc_tags

}

module "subnet" {
  source = "./modules/aws_subnet"
  vpc_id = var.vpc_id
  subnets_cidr = var.subnets_cidr
  subnet_availability_zone = var.subnet_availability_zone
  subnet_tags = var.subnet_tags
}
module "sg" {
  source = "./modules/aws_sg"
  vpc_id = var.vpc_id
  sg_name = var.sg_name
}
module "nic" {
  source = "./modules/aws_nic"
  subnet_id = var.subnet_id
  private_ips = var.private_ips
  nic_name_tags = var.nic_name_tags

}
module "aws_instance" {
  source = "./modules/aws_instance"  
  instance_ami = var.instance_ami
  instance_type = var.instance_ami
  nic_id = var.nic_id
  instance_name = var.instance_name
}