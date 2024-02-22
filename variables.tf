# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "state_bucket_name" {
  description = "The name to use for the S3 bucket that will store the Terraform state."
  type        = string
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region to deploy into (e.g. us-east-1)."
  type        = string
}

variable "self_managed_creds_with_mfa_policy_description" {
  default     = "Allows sufficient access for users to administer their own user accounts, requiring multi-factor authentication (MFA)."
  description = "The description to associate with the IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA)."
  type        = string
}

variable "self_managed_creds_with_mfa_policy_name" {
  default     = "SelfManagedCredsWithMFA"
  description = "The name to assign the IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA)."
  type        = string
}

variable "self_managed_creds_without_mfa_policy_description" {
  default     = "Allows sufficient access for users to administer their own user accounts, without requiring multi-factor authentication (MFA)."
  description = "The description to associate with the IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA)."
  type        = string
}

variable "self_managed_creds_without_mfa_policy_name" {
  default     = "SelfManagedCredsWithoutMFA"
  description = "The name to assign the IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA)."
  type        = string
}

variable "state_table_name" {
  default     = "terraform-state-lock"
  description = "The name to use for the DynamoDB table that will be used for Terraform state locking."
  type        = string
}

variable "state_table_read_capacity" {
  default     = 5
  description = "The number of read units for the DynamoDB table that will be used for Terraform state locking."
  type        = number
}

variable "state_table_write_capacity" {
  default     = 5
  description = "The number of write units for the DynamoDB table that will be used for Terraform state locking."
  type        = number
}

variable "tags" {
  default     = {}
  description = "Tags to apply to all AWS resources created."
  type        = map(string)
}
