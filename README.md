# Terraform S3 Backend with DynamoDB Lock
This example has two parts. The first part is used to provision an S3 backend for terraform state file with a dynamoDB lock. And the second part consumes the S3 backend and dynamoDB lock to provision resources.

## How to use

### Part 1: create s3 and dynamo db resources for terraform backend
cd terraform-s3-backend-creation-and-implementation
cd terraform-s3-backend-creator
terraform init
terraform plan
terraform apply -auto-approve

### Part 2: create terraform example resources that uses s3 and dynamo db for remote backend
cd ../terraform-s3-backend-implementor
terraform init
terraform plan
terraform apply -auto-approve

### destroy terraform example resources
cd terraform-s3-backend-implementor
terraform plan -destroy
terraform destroy -auto-approve

### destroy s3 and dynamo db resources
cd ../terraform-s3-backend-creator
terraform plan -destroy
terraform destroy -auto-approve