# cyhy-account #

[![GitHub Build Status](https://github.com/cisagov/cyhy-account/workflows/build/badge.svg)](https://github.com/cisagov/cyhy-account/actions)

This is a generic skeleton project that can be used to quickly get a
new [cisagov](https://github.com/cisagov) [Terraform
module](https://www.terraform.io/docs/modules/index.html) GitHub
repository started.  This skeleton project contains [licensing
information](LICENSE), as well as [pre-commit
hooks](https://pre-commit.com) and
[GitHub Actions](https://github.com/features/actions) configurations
appropriate for the major languages that we use.

See [here](https://www.terraform.io/docs/modules/index.html) for more
details on Terraform modules and the standard module structure.

<!-- BEGIN_TF_DOCS -->
## Requirements ##

| Name | Version |
|------|---------|
| terraform | ~> 1.0 |
| aws | ~> 4.9 |

## Providers ##

| Name | Version |
|------|---------|
| aws | ~> 4.9 |

## Modules ##

No modules.

## Resources ##

| Name | Type |
|------|------|
| [aws_dynamodb_table.state_lock_table](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |
| [aws_iam_policy.self_managed_creds_with_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy.self_managed_creds_without_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_s3_bucket.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_ownership_controls.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls) | resource |
| [aws_s3_bucket_public_access_block.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.state_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_iam_policy_document.self_managed_creds_with_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.self_managed_creds_without_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs ##

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_region | The AWS region to deploy into (e.g. us-east-1). | `string` | `"us-east-1"` | no |
| self\_managed\_creds\_with\_mfa\_policy\_description | The description to associate with the IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA). | `string` | `"Allows sufficient access for users to administer their own user accounts, requiring multi-factor authentication (MFA)."` | no |
| self\_managed\_creds\_with\_mfa\_policy\_name | The name to assign the IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA). | `string` | `"SelfManagedCredsWithMFA"` | no |
| self\_managed\_creds\_without\_mfa\_policy\_description | The description to associate with the IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA). | `string` | `"Allows sufficient access for users to administer their own user accounts, without requiring multi-factor authentication (MFA)."` | no |
| self\_managed\_creds\_without\_mfa\_policy\_name | The name to assign the IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA). | `string` | `"SelfManagedCredsWithoutMFA"` | no |
| state\_bucket\_name | The name to use for the S3 bucket that will store the Terraform state. | `string` | n/a | yes |
| state\_table\_name | The name to use for the DynamoDB table that will be used for Terraform state locking. | `string` | `"terraform-state-lock"` | no |
| state\_table\_read\_capacity | The number of read units for the DynamoDB table that will be used for Terraform state locking. | `number` | `5` | no |
| state\_table\_write\_capacity | The number of write units for the DynamoDB table that will be used for Terraform state locking. | `number` | `5` | no |
| tags | Tags to apply to all AWS resources created. | `map(string)` | `{}` | no |

## Outputs ##

| Name | Description |
|------|-------------|
| selfmanagedcredswithmfa\_policy | The IAM policy that allows users to administer their own user accounts, requiring multi-factor authentication (MFA). |
| selfmanagedcredswithoutmfa\_policy | The IAM policy that allows users to administer their own user accounts, without requiring multi-factor authentication (MFA). |
| state\_bucket | The S3 bucket where Terraform state information will be stored. |
| state\_lock\_table | The DynamoDB table that to be used for Terraform state locking. |
<!-- END_TF_DOCS -->

## Notes ##

Running `pre-commit` requires running `terraform init` in every directory that
contains Terraform code. In this repository, these are the main directory and
every directory under `examples/`.

## New Repositories from a Skeleton ##

Please see our [Project Setup guide](https://github.com/cisagov/development-guide/tree/develop/project_setup)
for step-by-step instructions on how to start a new repository from
a skeleton. This will save you time and effort when configuring a
new repository!

## Contributing ##

We welcome contributions!  Please see [`CONTRIBUTING.md`](CONTRIBUTING.md) for
details.

## License ##

This project is in the worldwide [public domain](LICENSE).

This project is in the public domain within the United States, and
copyright and related rights in the work worldwide are waived through
the [CC0 1.0 Universal public domain
dedication](https://creativecommons.org/publicdomain/zero/1.0/).

All contributions to this project will be released under the CC0
dedication. By submitting a pull request, you are agreeing to comply
with this waiver of copyright interest.
