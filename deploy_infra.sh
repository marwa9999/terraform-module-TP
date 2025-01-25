#!/bin/bash

echo "Initialisation de Terraform..."
terraform init

echo "Planification de l'infrastructure complète..."
terraform plan -out=tfplan

echo "Déploiement de l'infrastructure..."
terraform apply tfplan

echo "Infrastructure déployée avec succès."
