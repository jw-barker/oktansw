resource "okta_user" "users" {
  for_each = { for u in var.users : u.username => u }

  login       = each.value.username
  email       = each.value.email
  first_name  = each.value.first_name
  last_name   = each.value.last_name
  credentials {
    password = random_string.passwords[each.key].result
  }
}

resource "random_string" "passwords" {
  length  = 16
  special = true
  number  = true

  generate = length(var.users)
}
