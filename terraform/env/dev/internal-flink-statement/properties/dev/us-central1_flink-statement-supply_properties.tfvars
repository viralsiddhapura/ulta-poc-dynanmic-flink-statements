# Replace with your actual IDs from Step 1
environment_id  = "env-7d3n3o"           # Your Confluent environment ID
compute_pool_id = "lfcp-k53r9v"          # Your Flink compute pool ID
kafka_cluster_id = "lkc-909m9y"          # Your Kafka cluster ID
principal       = "sa-rry65o1"           # Supply service account ID

flink_statements = [
  {
    name = "supply_stream_processor"
    statement = "
      CREATE TABLE supply_events (
        event_id STRING,
        product_id STRING,
        quantity INT,
        timestamp TIMESTAMP(3),
        WATERMARK FOR timestamp AS timestamp - INTERVAL '5' SECOND
      ) WITH (
        'kafka.topic' = 'supply.events',
        'value.format' = 'json'
      );
    "
    properties = {
      "sql.current-catalog"  = "my-catalog"
      "sql.current-database" = "my-database"
    }
  }
]