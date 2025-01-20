variable "tags" {
  description = "(Optional) A mapping of tags to assign to the bucket."
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "(Optional) The name that the resource is deployed in. e.g. devops, logs, lake"
  type        = string
}

variable "billing_mode" {
  description = "(Optional) Controls how you are charged for read and write throughput and how you manage capacity. The valid values are PROVISIONED and PAY_PER_REQUEST. Defaults to PROVISIONED"
  type        = string
  default     = "PROVISIONED"
  validation {
    error_message = "Valid values for Var: billing_mode (PROVISIONED, PAY_PER_REQUEST)"
    condition     = contains(["PAY_PER_REQUEST", "PROVISIONED"], var.billing_mode)
  }
}

variable "read_capacity" {
  nullable    = true
  description = "(Optional) Number of read units for this table. If the billing_mode is PROVISIONED, this field is required"
  type        = number
  default     = 20
  validation {
    error_message = "When billing_mode is PROVISIONED, read_capacity is required."
    condition     = var.billing_mode != "PROVISIONED" || var.read_capacity != null
  }
}

variable "write_capacity" {
  nullable    = true
  description = "(Optional) Number of write units for this table. If the billing_mode is PROVISIONED, this field is required"
  type        = number
  default     = 20
  validation {
    error_message = "When billing_mode is PROVISIONED, write_capacity is required."
    condition     = var.billing_mode != "PROVISIONED" || var.write_capacity != null
  }
}

variable "kms_key_arn" {
  description = "(Required) ARN of the CMK that should be used for the AWS KMS encryption. "
  type        = string
}

variable "attribute" {
  description = "(Required) Set of nested attribute definitions."
  type = list(object({
    name = string
    type = string
  }))
  validation {
    error_message = "var: attribute list must be greater than or equal to 1"
    condition     = length(var.attribute) >= 1
  }
}

variable "hash_key" {
  description = "(Required, Forces new resource) Attribute to use as the hash (partition) key. Must also be defined as an attribute"
  type        = string
}

variable "deletion_protection_enabled" {
  description = "(Optional) Enables deletion protection for table. Defaults to True"
  type        = bool
  default     = true
}