output "hosted_zone_id" {
  value = aws_route53_zone.zone.id
}

output "zone" {
  value = aws_route53_zone.zone
}
