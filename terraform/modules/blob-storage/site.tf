resource "aws_s3_bucket_website_configuration" "blob-website" {
  count  = var.enable_site ? 1 : 0
  bucket = aws_s3_bucket.blob-storage.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }
}
