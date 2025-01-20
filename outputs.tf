output "arn" {
  value = aws_dynamodb_table.this.arn
}

output "id" {
  value = aws_dynamodb_table.this.id
}

output "name" {
  value = aws_dynamodb_table.this.name
}

output "hash_key" {
  value = aws_dynamodb_table.this.hash_key
}