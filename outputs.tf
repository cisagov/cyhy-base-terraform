output "selfmanagedcredswithmfa_policy" {
  description = "The IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA)."
  value       = aws_iam_policy.self_managed_creds_with_mfa
}

output "selfmanagedcredswithoutmfa_policy" {
  description = "The IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA)."
  value       = aws_iam_policy.self_managed_creds_without_mfa
}

output "state_bucket" {
  description = "The S3 bucket where Terraform state information will be stored."
  value       = aws_s3_bucket.state_bucket
}

output "state_lock_table" {
  description = "The DynamoDB table that to be used for Terraform state locking."
  value       = aws_dynamodb_table.state_lock_table
}
