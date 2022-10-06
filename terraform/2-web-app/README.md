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

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blog-storage"></a> [blog-storage](#module\_blog-storage) | ../modules/blob-storage | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_sns_topic.deploy-notifications](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
