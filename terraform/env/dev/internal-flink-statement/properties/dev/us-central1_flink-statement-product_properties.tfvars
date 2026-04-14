environment_id  = "env-7d3n3o"           # Your Confluent environment ID
compute_pool_id = "lfcp-k53r9v"          # Your Flink compute pool ID
kafka_cluster_id = "lkc-909m9y"          # Your Kafka cluster ID
principal       = "sa-k89wn2m"           # Supply service account ID

flink_statements = [
  {
    name = "product_stream_processor"
    statement = "
      CREATE TABLE product_updates (
        product_id STRING,
        name STRING,
        price DECIMAL(10,2),
        timestamp TIMESTAMP(3),
        WATERMARK FOR timestamp AS timestamp - INTERVAL '5' SECOND
      ) WITH (
        'kafka.topic' = 'product.updates',
        'value.format' = 'json'
      );
    "
    properties = {
      "sql.current-catalog"  = "my-catalog"
      "sql.current-database" = "my-database"
    }
  }
]
