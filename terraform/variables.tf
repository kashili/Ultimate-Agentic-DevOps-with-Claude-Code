variable "region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-west-2"
}

variable "project_name" {
  description = "Project name used for resource naming and tagging"
  type        = string
  default     = "kashili2"

  validation {
    condition     = can(regex("^[a-z][a-z0-9-]*$", var.project_name))
    error_message = "Project name must start with a lowercase letter and contain only lowercase alphanumeric characters and hyphens."
  }
}

variable "environment" {
  description = "Environment name for resource tagging"
  type        = string
  default     = "production"
}

variable "domain_name" {
  description = "Custom domain name for the website (optional, for Route53 and ACM configuration)"
  type        = string
  default     = ""
}
