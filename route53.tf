resource "aws_route53_zone" "main" {
  name = var.domain_name
}

resource "aws_route53_record" "site" {
  for_each = toset(["A", "AAAA"])

  zone_id = aws_route53_zone.main.zone_id
  name    = local.fqdn
  type    = each.value

  alias {
    name                   = aws_cloudfront_distribution.cdn.domain_name
    zone_id                = aws_cloudfront_distribution.cdn.hosted_zone_id
    evaluate_target_health = false
  }
}
