terraform {
  required_version = ">=1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.23.1"
    }
  }
}

module "dyndb" {
  source = "github.com/rio-tinto/rtlh-tf-aws-dynamodb?ref=v0.0.4"

  kms_key_arn = data.aws_kms_key.this.arn
  attribute = [
    {
      name = "LockID"
      type = "S"
    }
  ]
  hash_key = "LockID"
}
