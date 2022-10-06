module "blog-storage" {
  source      = "../modules/blob-storage"
  bucket_name = "190281595713-blob-storage"
  object_key  = var.object_key
  object_path = "../../curlable.txt"
}

#TODO github actions -> env.TF_VAR_object_key = secrets.TF_VAR_OBJECT_KEY
variable "object_key" {
  type    = string
  default = "curlable.txt"
}
