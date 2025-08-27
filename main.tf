provider "aws" {
	access_key = var.access_key
	secret_key = var.secret_key
	region     = var.region
}

# Create private s3 bucket
resource "aws_s3_bucket" "source-bucket" {
  bucket = var.bucket_name
}