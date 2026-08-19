output "identity_arn" {
  description = "ARN of the SES email identity."
  value       = aws_sesv2_email_identity.this.arn
}

output "verified_for_sending_status" {
  description = "Verification status of the identity, e.g. SUCCESS once DNS propagation completes."
  value       = aws_sesv2_email_identity.this.verified_for_sending_status
}
