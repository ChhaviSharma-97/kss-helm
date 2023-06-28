module "iam_roles" {
    source     = "git::https://github.com/tothenew/terraform-aws-identity.git?ref=v0.1.2"
    project_name_prefix = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"
}
