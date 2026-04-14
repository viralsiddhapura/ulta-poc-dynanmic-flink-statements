module "flink_statements" {
  source = "../../../../modules/flink-statements"

  organization_id       = var.organization_id
  environment_id        = var.environment_id
  compute_pool_id       = var.compute_pool_id
  kafka_cluster_id      = var.kafka_cluster_id
  principal             = var.principal
  kafka_flink_api_key   = var.kafka_int_flink_api_key
  kafka_flink_api_secret = var.kafka_int_flink_api_secret
  flink_statements      = var.flink_statements
}