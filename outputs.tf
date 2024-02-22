output "state_bucket" {
  description = "The S3 bucket where Terraform state information will be stored."
  value       = aws_s3_bucket.state_bucket
}

output "state_lock_table" {
  description = "The DynamoDB table that to be used for Terraform state locking."
  value       = aws_dynamodb_table.state_lock_table
}
