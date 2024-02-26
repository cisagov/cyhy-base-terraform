# ------------------------------------------------------------------------------
# REQUIRED PARAMETERS
#
# You must provide a value for each of these parameters.
# ------------------------------------------------------------------------------

variable "godlike_usernames" {
  description = "The usernames associated with the god-like accounts to be created, which are allowed to access the Terraform backend, are IAM administrators, and are allowed to assume any role in the account.  The format first.last is recommended.  Example: [\"firstname1.lastname1\",  \"firstname2.lastname2\"]."
  type        = list(string)
}

variable "state_bucket_name" {
  description = "The name to use for the S3 bucket that will store the Terraform state."
  type        = string
}

# ------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "assume_any_role_policy_description" {
  default     = "Allow assumption of any role in the account."
  description = "The description to associate with the IAM policy that allows assumption of any role in the account."
  type        = string
}

variable "assume_any_role_policy_name" {
  default     = "AssumeAnyRole"
  description = "The name to assign the IAM policy that allows assumption of any role in the account."
  type        = string
}

variable "aws_region" {
  default     = "us-east-1"
  description = "The AWS region to deploy into (e.g. us-east-1)."
  type        = string
}

variable "gods_group_name" {
  default     = "gods"
  description = "The name of the group to be created for the god-like users that are allowed to access the Terraform backend, are IAM administrators, and are allowed to assume any role in the account."
  type        = string
}

variable "password_policy_allow_users_to_change_password" {
  default     = true
  description = "Whether to allow users to change their own passwords."
  type        = bool
}

variable "password_policy_minimum_password_length" {
  default     = 12
  description = "The minimum required length for IAM user passwords."
  type        = number
}

variable "password_policy_require_lowercase_characters" {
  default     = true
  description = "Whether IAM user passwords are required to contain at least one lowercase letter from the Latin alphabet (a-z)."
  type        = bool
}

variable "password_policy_require_numbers" {
  default     = true
  description = "Whether IAM user passwords are required to contain at least one number."
  type        = bool
}

variable "password_policy_require_symbols" {
  default     = true
  description = "Whether IAM user passwords are required to contain at least one non-alphanumeric character (! @ # $ % ^ & * ( ) _ + - = [ ] { } | ')."
  type        = bool
}

variable "password_policy_require_uppercase_characters" {
  default     = true
  description = "Whether IAM user passwords are required to contain at least one uppercase letter from the Latin alphabet (A-Z)."
  type        = bool
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
