provider "aws" {
    profile    = "default"
    region     = "us-west-2"
}
resource "aws_s3_bucket" "bucket-state-backend" {
    bucket = "bucket-state-backend-s3"
    lifecycle {
        prevent_destroy = true
    }
    tags = {
        Name = "state-backend-S3"
    }
}