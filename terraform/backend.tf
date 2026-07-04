# Terraform state backend configuration for S3 with DynamoDB locking
#
# IMPORTANT: First-time setup requires these steps:
#   1. Comment out or omit this backend configuration
#   2. Run: terraform init
#   3. Run: terraform plan && terraform apply (creates S3 and DynamoDB resources)
#   4. Uncomment the backend block below
#   5. Run: terraform init -migrate-state (migrates local state to S3 backend)
#
# This bootstrap approach ensures the backend resources exist before Terraform
# attempts to store its state in them.
#
# After initial setup, create a separate S3 bucket for Terraform state:
#   - Name: <project-name>-terraform-state
#   - Enable versioning
#   - Enable encryption
#   - Block public access
#   - Create DynamoDB table: <project-name>-terraform-lock

/*
terraform {
  backend "s3" {
    bucket         = "kashili2-terraform-state"
    key            = "kashili2/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    dynamodb_table = "kashili2-terraform-lock"
  }
}
*/
