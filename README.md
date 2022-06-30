<!-- BEGIN_TF_DOCS -->
# Create AWS Route53 Zones with DNSSEC

This module allows you to quickly and efficiently create AWS Route53 zones with DNSSEC.
This requires the presence of an existing Domain Signing Key (DSK) in your AWS account.

## Examples

```hcl
module "example" {
  source  = "CogDisResLab/route53-dnssec/aws"
  version = "1.2.0"

  hosted_zone_name      = "example.com"
  description           = "Example hosted zone"
  kms_management_key_id = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0, < 5.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the hosted zone | `string` | `"Hosted zone managed by terraform"` | no |
| <a name="input_hosted_zone_name"></a> [hosted\_zone\_name](#input\_hosted\_zone\_name) | Name of the hosted zone | `string` | n/a | yes |
| <a name="input_kms_management_key_id"></a> [kms\_management\_key\_id](#input\_kms\_management\_key\_id) | ARN of the key signing key to use | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_hosted_zone_id"></a> [hosted\_zone\_id](#output\_hosted\_zone\_id) | ID of the hosted zone |
| <a name="output_zone"></a> [zone](#output\_zone) | Name of the hosted zone |

## Resources

| Name | Type |
|------|------|
| [aws_route53_hosted_zone_dnssec.dnssec](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_hosted_zone_dnssec) | resource |
| [aws_route53_key_signing_key.key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_key_signing_key) | resource |
| [aws_route53_zone.zone](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route53domains_registered_domain.registered_domain](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53domains_registered_domain) | resource |

## License

This project is licensed under the GNU General Public License version 3 (GPLv3).
<!-- END_TF_DOCS -->
