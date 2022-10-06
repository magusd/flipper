
resource "aws_iam_role" "writter-role" {
  name = "${var.bucket_name}-writter-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          AWS = "190281595713"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy" "writter-policy" {
  name = "${aws_iam_role.writter-role.name}-policy"
  role = aws_iam_role.writter-role.id

  policy = templatefile("${path.module}/policies/writter-role-policy.json.tftpl", {
    bucket_name : aws_s3_bucket.blob-storage.bucket,
  })
  depends_on = [
    aws_s3_bucket.blob-storage
  ]
}
