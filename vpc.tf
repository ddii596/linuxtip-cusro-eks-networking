resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = var.project_name
  }

}

resource "aws_vpc_ipv4_cidr_block_association" "main" {
  count      = length(var.aditional_vpc_cidrs)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.aditional_vpc_cidrs[count.index]
}