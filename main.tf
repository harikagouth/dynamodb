resource "aws_dynamodb_table" "this" {
  name = var.name

  ############ billing #######################
  billing_mode   = var.billing_mode
  read_capacity  = var.billing_mode == "PAY_PER_REQUEST" ? null : var.read_capacity
  write_capacity = var.billing_mode == "PAY_PER_REQUEST" ? null : var.write_capacity

  deletion_protection_enabled = var.deletion_protection_enabled

  server_side_encryption {
    enabled     = true
    kms_key_arn = var.kms_key_arn
  }

  point_in_time_recovery {
    enabled = true
  }

  dynamic "attribute" {
    for_each = var.attribute
    content {
      name = attribute.value["name"]
      type = attribute.value["type"]
    }
  }

  hash_key = var.hash_key

  tags = var.tags
}

