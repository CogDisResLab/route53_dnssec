variable "hosted_zone_name" {
  description = "Name of the hosted zone"
  type        = string
  nullable    = false
}

variable "description" {
  description = "Description of the hosted zone"
  default     = "Hosted zone managed by terraform"
  type        = string
  nullable    = false
}

variable "kms_management_key_id" {
  description = "ARN of the key signing key to use"
  type        = string
  nullable    = false

  validation {
    condition     = can(regex("^arn:aws:kms:.*", var.kms_management_key_id))
    error_message = "KMS key must be in the format arn:aws:kms:region:account-id:key/key-id."
  }
}
