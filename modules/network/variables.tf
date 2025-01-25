variable "instance_count" {
  description = "Nombre d'instances EC2 à déployer"
  default     = 3
}

variable "subnet_id" {
  description = "ID du sous-réseau où les instances EC2 seront créées"
}

variable "security_group_ids" {
  description = "Groupes de sécurité associés aux instances EC2"
  type        = list(string)
}

variable "key_name" {
  description = "Nom de la paire de clés SSH"
}

variable "ami_id" {
  description = "ID de l'AMI à utiliser pour les instances EC2"
}

variable "instance_type" {
  description = "Type d'instance EC2"
  default     = "t2.micro"
}
