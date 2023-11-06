variable "region" {
  type = string
  default = "us-east-1"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "key_pair_name" {
}

variable "instance_name_tag" {
  type = string
  default = "xyz_instance_tf"
}