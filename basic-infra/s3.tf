resource "aws_s3_bucket" "s3_backend" {
    bucket = "${local.workspace.account_name}-${local.workspace.aws.region}-${local.workspace.project_name}-backend"
    force_destroy = true

}
resource "aws_s3_bucket_acl" "bucket_acl" {
  depends_on = [aws_s3_bucket_ownership_controls.s3_ownership]
  bucket = aws_s3_bucket.s3_backend.id
  acl    = "private"
}
resource "aws_s3_bucket_ownership_controls" "s3_ownership" {
  bucket = aws_s3_bucket.s3_backend.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

