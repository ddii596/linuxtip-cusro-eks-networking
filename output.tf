output "vpc_id" {
    value = aws_ssm_parameter.vpc.id
  
}

output "public_subnets_id" {
    value = aws_ssm_parameter.public_subnets[*].id
  
}

output "private_subnets_id" {
    value = aws_subnet.private[*].id
  
}


output "database_subnets_id" {
    value = aws_subnet.database[*].id
  
}