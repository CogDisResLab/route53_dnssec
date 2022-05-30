output "hosted_zone_id" {
  value       = aws_route53_zone.zone.id
  description = "ID of the hosted zone"

}

output "zone" {
  value       = aws_route53_zone.zone
  description = "Name of the hosted zone"
}
