variable "domain_name" {
  type        = string
  description = "Domain to verify as an SES sending identity, e.g. mail.sandbox.akmspl.in."
}

variable "hosted_zone_id" {
  type        = string
  description = "Route53 hosted zone that domain_name belongs to - DKIM and MAIL FROM records are published here."
}

variable "mail_from_subdomain" {
  type        = string
  description = "Custom MAIL FROM domain - must be a subdomain of domain_name, and must not be used for sending or receiving mail."
}
