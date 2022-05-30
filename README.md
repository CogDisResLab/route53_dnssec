# AWS Route53 Zone with DNSSEC Set up

This is a simple module that allows you to generate an AWS Route53 Zone with DNSSEC enabled. It needs an existing KMS key to work.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 1.16 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 1.16 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_route53_hosted_zone_dnssec.dnssec](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_hosted_zone_dnssec) | resource |
| [aws_route53_key_signing_key.key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_key_signing_key) | resource |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route53domains_registered_domain.registered_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53domains_registered_domain) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the hosted zone | `any` | n/a | yes |
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | Name of the hosted zone | `any` | n/a | yes |
| <a name="input_kms_management_key_id"></a> [kms\_management\_key\_id](#input\_kms\_management\_key\_id) | ARN of the key signing key to use | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hosted_zone_id"></a> [hosted\_zone\_id](#output\_hosted\_zone\_id) | n/a |
| <a name="output_zone"></a> [zone](#output\_zone) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
