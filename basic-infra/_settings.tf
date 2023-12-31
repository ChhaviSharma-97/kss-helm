
provider "aws" {
  region  = local.workspace["aws"]["region"]
  profile = "default"
}

terraform {
  backend "s3" {
    bucket  = "kss-basic-infra-backend"
    encrypt = true
    key     = "basic-infra/main.tfstate"
    region  = "ap-south-1"
    profile = "default"
  }
}

terraform {
  required_version = ">= 1.3.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws",
      version = "4.23.0"
    }
  }
}

locals {
  env       = yamldecode(file("${path.module}/config.yml"))
  common    = local.env["common"]
  workspace = local.env["workspaces"][terraform.workspace]

  project_name_prefix = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}"

  tags = {
    Project     = local.workspace.project_name
  }
}
