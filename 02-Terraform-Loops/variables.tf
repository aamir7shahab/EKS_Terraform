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

variable "instance_type_list" {
  type = list(string)
  default = ["t3.micro", "t3.small"]
  
}

variable "instance_type_map" {
  type = map(string)
  default = {
    "dev" = "t3.micro"
    "prod" = "t3.medium"
  }   
}