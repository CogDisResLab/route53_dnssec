module "example" {
  source  = "CogDisResLab/route53-dnssec/aws"
  version = "1.2.0"

  hosted_zone_name      = "example.com"
  description           = "Example hosted zone"
  kms_management_key_id = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
}
