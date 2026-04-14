terraform {
  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      # Version is defined in root module
    }
  }
}

resource "confluent_flink_statement" "statements" {
  for_each = { for stmt in var.flink_statements : stmt.name => stmt }

  organization {
    id = var.organization_id
  }

  environment {
    id = var.environment_id
  }

  compute_pool {
    id = var.compute_pool_id
  }

  principal {
    id = var.principal
  }

  statement  = each.value.statement
  properties = each.value.properties

  credentials {
    key    = var.kafka_flink_api_key
    secret = var.kafka_flink_api_secret
  }

  rest_endpoint = "https://flink.us-central1.gcp.confluent.cloud"
}