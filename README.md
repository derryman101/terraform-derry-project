# Terraform AWS CI/CD Project

This project provisions a basic AWS environment using Terraform and demonstrates how to run automated Terraform workflows in GitHub Actions.

## Prerequisites
- Terraform v1.5+ installed locally or in CI
- AWS CLI configured locally (for bootstrap)
- GitHub repository with `secrets` configured (see below)

## Bootstrap remote backend (run locally once)

1. Create S3 bucket and DynamoDB table for state locking (run locally):

```bash
aws s3 mb s3://derryterrapjt --region us-east-1
aws s3api put-public-access-block --bucket derryterrapjt --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true
aws dynamodb create-table --table-name terraform-lock --attribute-definitions AttributeName=LockID,AttributeType=S --key-schema AttributeName=LockID,KeyType=HASH --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5 --region us-east-1