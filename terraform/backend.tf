terraform {
  backend "s3" {
    profile        = "default"
    bucket         = "bucket-state-backend-s3"
    region         = "us-west-2"
    encrypt        = "true"
    dynamodb_table = "dynamodb-backend"
    key            = "musiclibrarypagarme/terraform.tfstate"
  }
}