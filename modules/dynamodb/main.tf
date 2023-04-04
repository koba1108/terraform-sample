resource "aws_dynamodb_table" "dynamodb-users" {
  name                        = "users"
  hash_key                    = "PK"
  billing_mode                = "PAY_PER_REQUEST"
  range_key                   = "SK"
  read_capacity               = "0"
  write_capacity              = "0"
  stream_enabled              = "false"
  deletion_protection_enabled = "true"

  attribute {
    name = "PK"
    type = "S"
  }

  attribute {
    name = "SK"
    type = "S"
  }

  attribute {
    name = "recordType"
    type = "S"
  }

  global_secondary_index {
    hash_key        = "SK"
    name            = "SK-PK"
    projection_type = "ALL"
    range_key       = "PK"
    read_capacity   = "0"
    write_capacity  = "0"
  }

  local_secondary_index {
    name            = "PK-recordType"
    projection_type = "ALL"
    range_key       = "recordType"
  }

  point_in_time_recovery {
    enabled = "true"
  }

  tags = {
    Environment = "development"
    Name        = "ykoba-terraform"
  }

  tags_all = {
    Environment = "development"
    Name        = "ykoba-terraform"
  }
}
