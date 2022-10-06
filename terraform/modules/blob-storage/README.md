## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.33.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.33.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_role.writter-role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy.writter-policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy) | resource |
| [aws_s3_bucket.blob-storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.blob-storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_policy.blob-storage](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_website_configuration.blob-website](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration) | resource |
| [aws_s3_object.object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | (optional) bucket name | `string` | n/a | yes |
| <a name="input_enable_site"></a> [enable\_site](#input\_enable\_site) | (optional) enable site hosting | `bool` | `false` | no |
| <a name="input_object_key"></a> [object\_key](#input\_object\_key) | (optional) s3 key of the object you want to be uploaded to the new bucket, required if object\_path is provided | `string` | `null` | no |
| <a name="input_object_path"></a> [object\_path](#input\_object\_path) | (optional) local path to object you want to be uploaded to the new bucket, required if object\_key is provided | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
