variable "users" {
  description = "List of users to create in Okta"
  type        = list(object({
    username   = string
    email      = string
    first_name = string
    last_name  = string
  }))
  default     = []
}

variable "username" {
  type = string
  default = "@customerservice.nsw.gov.au"
}
