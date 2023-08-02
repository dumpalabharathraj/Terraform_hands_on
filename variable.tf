variable "region" {
  default = "us-east-1"  # Change this to your desired region
}

variable "bucket_name" {
  default = "my-grep-bucket"  # Change this to a globally unique bucket name
}

variable "table_name" {
  default = "terraform-state-lock"  # Change this to your desired DynamoDB table name
}
