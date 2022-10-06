resource "aws_s3_object" "object" {
  count  = var.object_key != null && var.object_path != null ? 1 : 0
  bucket = aws_s3_bucket.blob-storage.id
  key    = var.object_key
  source = var.object_path
  etag   = filemd5(var.object_path)
  acl    = "public-read"
}
