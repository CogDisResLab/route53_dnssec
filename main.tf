resource "aws_route53_zone" "zone" {
  name    = var.hosted_zone_name
  comment = "${var.description} - Managed by Terraform"
  tags = {
    Managed = "true"
    Manager = "terraform"
  }
}

resource "aws_route53_key_signing_key" "key" {
  hosted_zone_id             = aws_route53_zone.zone.id
  name                       = "${replace(var.hosted_zone_name, ".", "")}key"
  key_management_service_arn = var.kms_management_key_id
}

resource "aws_route53_hosted_zone_dnssec" "dnssec" {
  depends_on = [
    aws_route53_key_signing_key.key,
  ]
  hosted_zone_id = aws_route53_zone.zone.id
}

resource "aws_route53domains_registered_domain" "registered_domain" {
  domain_name = var.hosted_zone_name

  name_server {
    name = element(aws_route53_zone.zone.name_servers, 0)
  }

  name_server {
    name = element(aws_route53_zone.zone.name_servers, 1)
  }

  name_server {
    name = element(aws_route53_zone.zone.name_servers, 2)
  }

  name_server {
    name = element(aws_route53_zone.zone.name_servers, 3)
  }
}
