provider "aws" {
  region = "us-east-1"  # Change this to your desired region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-grep-bucket"  # Change this to a globally unique bucket name
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-state-lock"  # Change this to your desired DynamoDB table name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
