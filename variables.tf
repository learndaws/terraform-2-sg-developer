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
  default = [
    {
        description      = "Allow port 80"
        from_port        = 80 # 0 means all ports
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 443"
        from_port        = 443 # 0 means all ports
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow port 22"
        from_port        = 22# 0 means all ports
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
}