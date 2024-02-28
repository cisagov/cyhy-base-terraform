# ------------------------------------------------------------------------------
# Provision SSM Session Manager and configure it for session logging.
# ------------------------------------------------------------------------------

module "session_manager" {
  providers = {
    aws = aws
  }

  source = "github.com/cisagov/session-manager-tf-module"
}
