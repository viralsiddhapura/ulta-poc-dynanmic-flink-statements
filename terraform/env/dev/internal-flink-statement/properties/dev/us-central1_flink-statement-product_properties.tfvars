environment_id  = "env-7d3n3o"           # Your Confluent environment ID
compute_pool_id = "lfcp-k53r9v"          # Your Flink compute pool ID
kafka_cluster_id = "lkc-909m9y"          # Your Kafka cluster ID
principal       = "sa-k89wn2m"           # Supply service account ID

flink_statements = [
  {
    name = "product_test_statement"
    statement = "SHOW DATABASES;"
    properties = {}
  }
]
