output "statement_names" {
  description = "Names of created Flink statements"
  value       = [for stmt in confluent_flink_statement.statements : stmt.statement_name]
}

output "statement_ids" {
  description = "IDs of created Flink statements"
  value       = { for name, stmt in confluent_flink_statement.statements : name => stmt.id }
}