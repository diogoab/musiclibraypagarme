resource "aws_dynamodb_table" "dynamodb-backend" {
  name = "dynamodb-backend"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  } 
  tags = {
    Name = "dynamodb-backend"
  }
}