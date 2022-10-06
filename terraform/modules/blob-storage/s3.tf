resource "aws_s3_bucket" "blob-storage" {
  bucket = var.bucket_name
}

# aws_iam_role.writter-role.arn
resource "aws_s3_bucket_policy" "blob-storage" {
  bucket = aws_s3_bucket.blob-storage.id
  policy = templatefile("${path.module}/policies/bucket-policy.json.tftpl", {
    bucket_name = aws_s3_bucket.blob-storage.bucket,
    role_name   = aws_iam_role.writter-role.arn
  })
}

resource "aws_s3_bucket_acl" "blob-storage" {
  bucket = aws_s3_bucket.blob-storage.id
  acl    = "public-read"
}
