output "endpoint" {
  value = aws_s3_bucket.blob-storage.bucket_domain_name
}
