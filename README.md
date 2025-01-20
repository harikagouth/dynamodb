<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=5.23.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=5.23.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_dynamodb_table.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/dynamodb_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_attribute"></a> [attribute](#input\_attribute) | (Required) Set of nested attribute definitions. | <pre>list(object({<br/>    name = string<br/>    type = string<br/>  }))</pre> | n/a | yes |
| <a name="input_billing_mode"></a> [billing\_mode](#input\_billing\_mode) | (Optional) Controls how you are charged for read and write throughput and how you manage capacity. The valid values are PROVISIONED and PAY\_PER\_REQUEST. Defaults to PROVISIONED | `string` | `"PROVISIONED"` | no |
| <a name="input_deletion_protection_enabled"></a> [deletion\_protection\_enabled](#input\_deletion\_protection\_enabled) | (Optional) Enables deletion protection for table. Defaults to True | `bool` | `true` | no |
| <a name="input_hash_key"></a> [hash\_key](#input\_hash\_key) | (Required, Forces new resource) Attribute to use as the hash (partition) key. Must also be defined as an attribute | `string` | n/a | yes |
| <a name="input_kms_key_arn"></a> [kms\_key\_arn](#input\_kms\_key\_arn) | (Required) ARN of the CMK that should be used for the AWS KMS encryption. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name that the resource is deployed in. e.g. devops, logs, lake | `string` | n/a | yes |
| <a name="input_read_capacity"></a> [read\_capacity](#input\_read\_capacity) | (Optional) Number of read units for this table. If the billing\_mode is PROVISIONED, this field is required | `number` | `20` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the bucket. | `map(string)` | `{}` | no |
| <a name="input_write_capacity"></a> [write\_capacity](#input\_write\_capacity) | (Optional) Number of write units for this table. If the billing\_mode is PROVISIONED, this field is required | `number` | `20` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | n/a |
| <a name="output_hash_key"></a> [hash\_key](#output\_hash\_key) | n/a |
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_name"></a> [name](#output\_name) | n/a |
<!-- END_TF_DOCS -->