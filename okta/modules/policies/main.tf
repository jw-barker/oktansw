resource "okta_policy" "policies" {
  count = length(var.okta_policies)

  name   = var.okta_policies[count.index].name
  type   = var.okta_policies[count.index].type
  status = "ACTIVE"

  settings = var.okta_policies[count.index].settings
}
