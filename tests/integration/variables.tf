# Testing Variable Details
variable "prefix" {
  type        = string
  description = "Adds a Prefix to the organization name prevent collisions."
}

# Provider Setup Details
variable "harness_platform_url" {
  type        = string
  description = "[Optional] Enter the Harness Platform URL.  Defaults to Harness SaaS URL"
  default     = "https://app.harness.io/gateway"
}

variable "harness_platform_account" {
  type        = string
  description = "[Required] Enter the Harness Platform Account Number"
  sensitive   = true
}

variable "harness_platform_key" {
  type        = string
  description = "[Required] Enter the Harness Platform API Key for your account"
  sensitive   = true
}

variable "global_tags" {
  type        = map(any)
  description = "[Optional] Provide a Map of Tags to associate with all organizations and resources create"
  default     = {}
}

# Organization Setup Details
variable "organization_name" {
  type        = string
  description = "[Required] Provide an organization name.  Must be two or more characters"
}

variable "organization_description" {
  type        = string
  description = "[Optional] Provide an organization description.  Must be six or more characters"
  default     = "Harness Organization for organization name"
}

variable "organization_tags" {
  type        = map(any)
  description = "[Optional] Provide a Map of Tags to associate with all organizations"
  default     = {}
}

# Variable Management for Harness Projects
variable "project_name" {
  type        = string
  description = "[Required] Provide a project name.  Must be two or more characters"
}

variable "project_color" {
  type        = string
  description = "[Optional] (String) Color of the project."
  default     = null
}

variable "project_description" {
  type        = string
  description = "[Optional] (String) Description of the resource."
  default     = "Harness Project created via Terraform"
}

variable "project_tags" {
  type        = map(any)
  description = "[Optional] Provide a Map of Tags to associate with the project"
  default     = {}
}