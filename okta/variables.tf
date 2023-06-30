variable "okta_token" {
  description = "Okta API token"
  type        = string
}

variable "okta_org" {
  description = "Okta organization URL"
  type        = string
}

variable "users" {
  description = "List of users"
  type        = list(object({
    username   = string
    email      = string
    first_name = string
    last_name  = string
  }))
}

variable "azure_subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "azure_tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

variable "azure_client_id" {
  description = "Azure Client ID"
  type        = string
}

variable "azure_client_secret" {
  description = "Azure Client Secret"
  type        = string
}

variable "azure_location" {
  description = "Azure region/Location"
  type        = string
}
