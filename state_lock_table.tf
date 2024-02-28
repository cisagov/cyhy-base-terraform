# ------------------------------------------------------------------------------
# Create the DynamoDB table that will be used for Terraform state locking.
# ------------------------------------------------------------------------------

resource "aws_dynamodb_table" "state_lock_table" {
  hash_key       = "LockID"
  name           = var.state_table_name
  read_capacity  = var.state_table_read_capacity
  write_capacity = var.state_table_write_capacity

  attribute {
    name = "LockID"
    type = "S"
  }
}
