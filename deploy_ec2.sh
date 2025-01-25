#!/bin/bash
echo "Déploiement des instances EC2..."
terraform apply -target=aws_instance.app_servers
