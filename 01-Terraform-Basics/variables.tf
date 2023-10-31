variable "region" {
  type = string
  default = "us-east-1"
}

variable "ami" {
  type = string
  default = "ami-01bc990364452ab3e"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_name_tag" {
  type = string
  default = "xyz_instance_tf"
}