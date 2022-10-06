variable "object_path" {
  type        = string
  description = "(optional) local path to object you want to be uploaded to the new bucket, required if object_key is provided"
  default     = null
}

variable "object_key" {
  type        = string
  description = "(optional) s3 key of the object you want to be uploaded to the new bucket, required if object_path is provided"
  default     = null
}

variable "bucket_name" {
  type        = string
  description = "(optional) bucket name"
}

variable "enable_site" {
  type        = bool
  description = "(optional) enable site hosting"
  default     = false
}
