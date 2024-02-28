# An IAM group for god-like users that are allowed to access the
# Terraform backend, are IAM administrators for the Users account, and
# are allowed to assume any role that has a trust relationship with
# the Users account
resource "aws_iam_group" "gods" {
  name = var.gods_group_name
}

data "aws_iam_policy_document" "assume_any_role_doc" {
  statement {
    effect = "Allow"

    actions = [
      "sts:AssumeRole",
      "sts:TagSession",
    ]

    resources = [
      "arn:aws:iam::${data.aws_caller_identity.this.account_id}:role/*"
    ]
  }
}

resource "aws_iam_policy" "assume_any_role" {
  description = var.assume_any_role_policy_description
  name        = var.assume_any_role_policy_name
  policy      = data.aws_iam_policy_document.assume_any_role_doc.json
}

# Attach the policy to the gods group
resource "aws_iam_group_policy_attachment" "assume_any_role" {
  group      = aws_iam_group.gods.name
  policy_arn = aws_iam_policy.assume_any_role.arn
}

#####
# The below policies are attached for compatibility with the current CyHy environment.
# These should ideally be removed in favor of using appropriately defined roles to
# assume.
#####

# Attach the AdministratorAccess AWS managed policy
resource "aws_iam_group_policy_attachment" "administratoraccess_managed_policy" {
  group      = aws_iam_group.gods.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Attach the job-function/Billing AWS managed policy
resource "aws_iam_group_policy_attachment" "job_function_billing_managed_policy" {
  group      = aws_iam_group.gods.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}
