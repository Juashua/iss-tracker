resource "aws_dynamodb_table" "iss_positions" {
  provider     = aws.account_b
  name         = "iss_positions"
  billing_mode = "PAY_PER_REQUEST"  # No capacity planning needed, scales to zero when idle
  hash_key     = "pk"
  range_key    = "timestamp"

  attribute {
    name = "pk"
    type = "S"  # Always "ISS" — partitions all records together
  }

  attribute {
    name = "timestamp"
    type = "S"  # Unix timestamp as string, used as sort key
  }

  ttl {
    attribute_name = "ttl"
    enabled        = true  # Auto-delete old records to keep costs near zero
  }

  tags = {
    Project     = "ISSTracker"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}