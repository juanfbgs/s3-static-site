output "site_url" {
  value = "https://${local.fqdn}"
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.cdn.domain_name
}

output "name_servers" {
  value = aws_route53_zone.main.name_servers
}

output "bucket_name" {
  value = aws_s3_bucket.site.id
}
