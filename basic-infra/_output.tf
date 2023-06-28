
output "terraform_agent_instance_id"{
 value = module.terraform_ec2_agent.id
 description = "terraform instance id"
}

output "Infra_Deploy_Role" {
 value = module.iam_roles.iam_instance_profile_infra_deploy_access_arn 
 description = "admin role arn"
}

output "S3_bucket_name" {
 value = aws_s3_bucket.s3_backend.id
 description = "s3 bucket name "
}
