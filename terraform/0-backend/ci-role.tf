
resource "aws_iam_role" "gh-deployment-role" {
  name = "gh-deployment-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          "Federated" : aws_iam_openid_connect_provider.github-oidc.arn
        },
        Action = "sts:AssumeRoleWithWebIdentity",
        Condition = {
          StringLike = {
            "token.actions.githubusercontent.com:aud" = "sts.amazonaws.com",
            "token.actions.githubusercontent.com:sub" = "repo:magusd/flipper*"
          }
        }
      }
    ]
  })
}

resource "aws_iam_role_policy" "gh-deployment-policy-state" {
  name = "github-deployment-policy-state"
  role = aws_iam_role.gh-deployment-role.id

  policy = templatefile("./policies/state-management.json.tftpl", {
    bucket : aws_s3_bucket.terraform-state.bucket,
    table : aws_dynamodb_table.terraform-lock.name
  })
}

resource "aws_iam_role_policy" "gh-deployment-policy-apply" {
  name = "github-deployment-policy-apply"
  role = aws_iam_role.gh-deployment-role.id

  policy = templatefile("./policies/apply.json.tftpl", {})
}
