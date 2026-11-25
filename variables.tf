variable "bucket_name" {
  type    = string
  default = "my-static-site"
}

variable "domain_name" {
  type    = string
  default = "example.com"
}

variable "subdomain" {
  type    = string
  default = "www"
}

variable "wait_for_certificate" {
  description = "Wait for ACM DNS validation. Keep false on Floci, set true on real AWS."
  type        = bool
  default     = false
}

variable "enable_security_headers" {
  description = "Attach a security headers policy. Keep false on Floci, set true on real AWS."
  type        = bool
  default     = false
}

locals {
  fqdn = "${var.subdomain}.${var.domain_name}"
}
