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
