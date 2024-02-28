# Comment out the contents of this file when bootstrapping this
# configuration.
terraform {
  backend "s3" {
    bucket         = "cisa-cyhy-terraform-state"
    dynamodb_table = "terraform-state-lock"
    encrypt        = true
    key            = "cyhy-base/terraform.tfstate"
    region         = "us-east-1"
  }
}
