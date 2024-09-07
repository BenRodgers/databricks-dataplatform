provider "aws" {
  region = "us-east-1"
}

# Create the S3 bucket for storing Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "dev-tfstate-databricks-dataplaform"

  tags = {
    Name        = "TerraformState"
    Environment = "dev"
  }
}
