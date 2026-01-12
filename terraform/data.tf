data "aws_ssm_parameter" "vpc_id" {
  name = var.ssm_vpc_id
}

data "aws_ssm_parameter" "private_subnet1" {
  name = var.ssm_private_subnet1
}

data "aws_ssm_parameter" "private_subnet2" {
  name = var.ssm_private_subnet2
}

data "aws_ssm_parameter" "private_subnet3" {
  name = var.ssm_private_subnet3
}

data "aws_ssm_parameter" "listener" {
  name = var.ssm_listener
}