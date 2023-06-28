# terraform-basic-setup

[![Lint Status](https://github.com/tothenew/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-template/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-template)](https://github.com/tothenew/terraform-aws-template/blob/master/LICENSE)
# This terraform script creates:
1. VPC
2. Public Subnets
3. Private Subnet
4. Secure/DB Subnets
5. EC2 server with Docker engine and make package installed,IAM policy with SSM and Administrator permissions
6. Default IAM policies required for Terraform provisioning.

Copy the files to local machine and execute below commands.
```
terraform init
terraform plan
terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.52.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2-jenkins"></a> [ec2-jenkins](#module\_ec2-jenkins) | git::https://github.com/tothenew/terraform-aws-jenkins.git | v0.0.1 |
| <a name="module_iam_roles"></a> [iam\_roles](#module\_iam\_roles) | git::https://github.com/tothenew/terraform-aws-identity.git | v0.1.1 |
| <a name="module_network"></a> [network](#module\_network) | git::https://github.com/tothenew/terraform-aws-vpc.git | v0.2.0 |
| <a name="module_terraform_ec2_agent"></a> [terraform\_ec2\_agent](#module\_terraform\_ec2\_agent) | git::https://github.com/tothenew/terraform-aws-agent.git | v0.1.0 |

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.s3_backend](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/resources/s3_bucket) | resource |
| [aws_subnets.private](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/data-sources/subnets) | data source |
| [aws_subnets.public](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/data-sources/subnets) | data source |
| [aws_subnets.secure](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/data-sources/subnets) | data source |
| [aws_vpc.selected](https://registry.terraform.io/providers/hashicorp/aws/4.52.0/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | The VPC Subnet IDs to launch in | `string` | `"nonprod"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Infra_Deploy_Role"></a> [Infra\_Deploy\_Role](#output\_Infra\_Deploy\_Role) | admin role arn |
| <a name="output_terraform_agent_instance_id"></a> [terraform\_agent\_instance\_id](#output\_terraform\_agent\_instance\_id) | terraform instance id |
<!-- END_TF_DOCS -->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-template/blob/main/LICENSE) for full details.
