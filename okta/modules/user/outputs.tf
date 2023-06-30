output "user_ids" {
  description = "List of created user IDs"
  value       = okta_user.users[*].id
}
