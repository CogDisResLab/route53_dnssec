variable "hosted_zone_name" {
  description = "Name of the hosted zone"
  default     = "example.com"
  type        = string
}

variable "description" {
  description = "Description of the hosted zone"
  default     = "Example hosted zone"
  type        = string
}

variable "kms_management_key_id" {
  description = "ARN of the key signing key to use"
  default     = "arn:aws:kms:us-east-1:123456789012:key/12345678-1234-1234-1234-123456789012"
  type        = string

  validation {
    condition     = can(regex("^arn:aws:kms:.*", var.kms_management_key_id))
    error_message = "KMS key must be in the format arn:aws:kms:region:account-id:key/key-id."
  }
}
