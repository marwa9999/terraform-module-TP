output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "public_subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "secure_sg_id" {
  description = "ID du groupe de sécurité sécurisé"
  value       = aws_security_group.secure_sg.id
}
