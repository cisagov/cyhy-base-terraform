output "assume_any_role_policy" {
  description = "The IAM role that allows assumption of any role in the account."
  value       = aws_iam_policy.assume_any_role
}

output "godlike_users" {
  description = "The IAM users that are allowed to access the Terraform backend, are IAM administrators, and are allowed to assume any role in the account."
  value       = aws_iam_user.gods
}

output "gods_group" {
  description = "The IAM group containing the god-like users that are allowed to access the Terraform backend, are IAM administrators for the Users account, and are allowed to assume any role that has a trust relationship with the Users account."
  value       = aws_iam_group.gods
}

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
