variable "vpc_cidr" {
    type = string
    default = "172.16.0.0/16"
}

variable "vpc_tags" {
    type = map(any)
    default = {
        "Name" = tf-example
      
    }
}
variable "subnets_cidr" {
  type = string
  default = "172.0.0.0/24" 
}

variable "subnet_availability_zone" {
  type = map(any)
  default = {
    "Name" = us-east-1a
  } 
}

variable "subnet_tags" {
  type = map(any)
  default = {
    "Name" = tf-example
  }
  
}
variable "sg_name" {
  type = map(any)
  default = {
    "Name" = allow_ssh_sg
  }
}

variable "private_ips" {
  type = list(string)
  default = [ "176.0.1.100" ]  
}

variable "nic_name_tags" {
  type = map(any)
  default = {
    "Name" = primary_network_interface
  }  
}
variable "instance_ami" {
  type = string
  default = "ami-98740328900232wf"
}

variable "instance_type" {
  type = string
  default = "t2.micro"  
}

variable "instance_name" {
  type = map(any)
  default = {
    "Name" = PROD-SERVER
  }  
}
