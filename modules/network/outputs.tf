output "instance_ids" {
  description = "ID des instances EC2 déployées"
  value       = aws_instance.instances[*].id
}

output "public_ips" {
  description = "Adresses IP publiques des instances EC2"
  value       = aws_instance.instances[*].public_ip
}

output "secure_sg_id" {
  description = "ID du groupe de sécurité sécurisé"
  value       = aws_security_group.secure_sg.id
}
