## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.8 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.33.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_blog-storage"></a> [blog-storage](#module\_blog-storage) | ../modules/blob-storage | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_object_key"></a> [object\_key](#input\_object\_key) | TODO github actions -> env.TF\_VAR\_object\_key = secrets.TF\_VAR\_OBJECT\_KEY | `string` | `"curlable.txt"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_endpoint"></a> [endpoint](#output\_endpoint) | n/a |
