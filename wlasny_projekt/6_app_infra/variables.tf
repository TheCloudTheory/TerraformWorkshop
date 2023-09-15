variable "location" {
  type        = string
  default     = "westeurope"
  description = "Azure region"
}

variable "environment" {
  type        = string
  description = "Environment name"

  validation {
    condition     = contains(["dev", "prod"], var.environment)
    error_message = "Environment must be either dev or prod"
  }
}

variable "project_prefix" {
  type        = string
  description = "Project prefix"

  validation {
    condition     = length(var.project_prefix) == 3
    error_message = "Project prefix must be 3 characters long"
  }
}

variable "tags" {
  type        = map(string)
  description = "The tags to associate with a resource"
}