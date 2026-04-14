variable "environment_id" {
  description = "Confluent Cloud Environment ID"
  type        = string
}

variable "compute_pool_id" {
  description = "Flink Compute Pool ID"
  type        = string
}

variable "kafka_cluster_id" {
  description = "Kafka Cluster ID"
  type        = string
}

variable "principal" {
  description = "Service Account Principal ID"
  type        = string
}

variable "kafka_int_flink_api_key" {
  description = "API Key for Flink service account"
  type        = string
  sensitive   = true
}

variable "kafka_int_flink_api_secret" {
  description = "API Secret for Flink service account"
  type        = string
  sensitive   = true
}

variable "flink_statements" {
  description = "List of Flink statements to create"
  type = list(object({
    name       = string
    statement  = string
    properties = map(string)
  }))
  default = []
}