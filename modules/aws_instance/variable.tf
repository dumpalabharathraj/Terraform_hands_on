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

variable "nic_id" {
  type = string  
}