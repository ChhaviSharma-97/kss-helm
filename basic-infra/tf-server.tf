module "terraform_ec2_agent" {
  depends_on = [
     module.network,
     module.iam_roles
    ]
  source              = "git::https://github.com/tothenew/terraform-aws-agent.git?ref=v0.1.1"
  vpc_id              = data.aws_vpc.selected.id
  subnet_id           = data.aws_subnets.public.ids[0]
  iam_instance_profile = module.iam_roles.iam_instance_profile_terraform_tf_agent_name
  project_name_prefix = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"
}

