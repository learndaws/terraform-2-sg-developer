variable "sg_name" {

}

variable "description" {

}

variable "vpc_id" {

}

variable "common_tags" {
    type = map
    default = {
        Project = "Roboshop"
        Environment = "Dev"
        Terraform = "True"
    }
}

variable "sg_function_tags" {

}

variable "ingress_rules" {
  type = list
  default = []
}