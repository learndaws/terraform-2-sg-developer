resource "aws_security_group" "allow-specific" {
  name        = var.sg_name
  description = var.description
  vpc_id      = var.vpc_id

  tags = merge(var.common_tags, var.sg_function_tags)
}