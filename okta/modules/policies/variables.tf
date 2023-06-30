variable "okta_policies" {
  description = "List of Okta policies"
  type        = list(object({
    name     = string
    type     = string
    settings = map(any)
  }))
}
