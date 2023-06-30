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
