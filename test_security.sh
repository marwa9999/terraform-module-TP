#!/bin/bash
echo "Vérification des règles de sécurité..."
aws ec2 describe-security-groups --group-ids $(terraform output -raw secure_sg_id)
