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
