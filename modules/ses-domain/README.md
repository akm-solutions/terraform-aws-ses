# ses-domain

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.9 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_record.dkim](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.mail_from_mx](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_route53_record.mail_from_spf](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |
| [aws_sesv2_email_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity) | resource |
| [aws_sesv2_email_identity_mail_from_attributes.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sesv2_email_identity_mail_from_attributes) | resource |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name) | Domain to verify as an SES sending identity, e.g. mail.sandbox.akmspl.in. | `string` | n/a | yes |
| <a name="input_hosted_zone_id"></a> [hosted\_zone\_id](#input\_hosted\_zone\_id) | Route53 hosted zone that domain\_name belongs to - DKIM and MAIL FROM records are published here. | `string` | n/a | yes |
| <a name="input_mail_from_subdomain"></a> [mail\_from\_subdomain](#input\_mail\_from\_subdomain) | Custom MAIL FROM domain - must be a subdomain of domain\_name, and must not be used for sending or receiving mail. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_identity_arn"></a> [identity\_arn](#output\_identity\_arn) | ARN of the SES email identity. |
| <a name="output_verified_for_sending_status"></a> [verified\_for\_sending\_status](#output\_verified\_for\_sending\_status) | Verification status of the identity, e.g. SUCCESS once DNS propagation completes. |
<!-- END_TF_DOCS -->
