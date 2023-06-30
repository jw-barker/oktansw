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

provider "okta" {
  token     = var.okta_token
  org_url   = var.okta_org
}

resource "okta_user" "users" {
  count = length(var.users)

  profile {
    login     = var.users[count.index].username
    email     = var.users[count.index].email
    firstName = var.users[count.index].first_name
    lastName  = var.users[count.index].last_name
  }
}
