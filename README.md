# ACME Platform Infrastructure

Terraform configuration for the ACME platform — VPC, ECS Fargate, RDS PostgreSQL, and ALB.

## Usage

```bash
terraform init
terraform plan -var="app_image=123456789.dkr.ecr.us-east-1.amazonaws.com/acme-app:latest" \
               -var="certificate_arn=arn:aws:acm:us-east-1:123456789:certificate/abc-123" \
               -var="domain_name=app.acme.com"
terraform apply
```

## Architecture

- VPC with public/private subnets across 2 AZs
- ECS Fargate service behind an ALB with HTTPS
- RDS PostgreSQL with encrypted storage and Secrets Manager
- Route53 DNS pointing to the ALB
