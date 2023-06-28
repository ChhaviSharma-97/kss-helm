module "network" {
  source      = "git::https://github.com/tothenew/terraform-aws-vpc.git?ref=v0.2.0"
  cidr_block  = "10.0.0.0/16"
  name	      =  "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"
  subnet_bits = 8
}

