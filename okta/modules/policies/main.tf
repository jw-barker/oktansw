variable "okta_policies" {
  description = "List of Okta policies"
  type        = list(object({
    name     = string
    type     = string
    settings = map(any)
  }))
}

resource "okta_policy" "policies" {
  count = length(var.okta_policies)

  name   = var.okta_policies[count.index].name
  type   = var.okta_policies[count.index].type
  status = "ACTIVE"

  settings = var.okta_policies[count.index].settings
}
