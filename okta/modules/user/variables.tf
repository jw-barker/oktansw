variable "okta_token" {}
variable "okta_org" {}

variable "users" {
  type = list(object({
    username   = string
    email      = string
    first_name = string
    last_name  = string
  }))
}
