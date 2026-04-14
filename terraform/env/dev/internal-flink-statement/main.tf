terraform {
  required_version = ">= 1.5.6"

  # Using local backend for POC
  # State files will be stored in state/<domain>/ directory
   backend "local" {
    # Path will be specified via -backend-config flag
    # Different path per domain to maintain isolation
  }

  required_providers {
    confluent = {
      source  = "confluentinc/confluent"
      version = "~> 1.83.0"
    }
  }
}

provider "confluent" {
  # Credentials will be provided via environment variables
  # CONFLUENT_CLOUD_API_KEY
  # CONFLUENT_CLOUD_API_SECRET
}