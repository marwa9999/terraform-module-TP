#!/bin/bash
echo "Initialisation de Terraform..."
terraform init

echo "Planification du déploiement..."
terraform plan -out=tfplan

echo "Déploiement..."
terraform apply tfplan

echo "Infrastructure déployée avec succès."
