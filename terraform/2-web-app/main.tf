module "blog-storage" {
  source      = "../modules/blob-storage"
  bucket_name = "app.flipper.magusd.com"
  enable_site = true
}

resource "aws_sns_topic" "deploy-notifications" {
  name = "react-app-deploy-notifications"
}

# npm run build
# aws s3 sync --acl="public-read" ./build s3://app.flipper.magusd.com
# aws sns publish --topic-arn "arn:aws:sns:us-east-2:190281595713:react-app-deploy-notifications" --message "New code deployed"
