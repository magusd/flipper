module "blog-storage" {
  source      = "../modules/blob-storage"
  bucket_name = "app.flipper.magusd.com"
  enable_site = true
}

resource "aws_sns_topic" "deploy-notifications" {
  name = "react-app-deploy-notifications"
}
