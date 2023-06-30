output "policy_ids" {
  description = "List of created policy IDs"
  value       = okta_policy.policies[*].id
}
