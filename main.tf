provider "aws" {
  version = "2.33.0"
  access_key = "AKIAI6QUFJ36TYT4HFDA"
  secret_key = "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"

  region = var.aws_region
}

provider "random" {
  version = "2.2"
}

resource "random_pet" "table_name" {}

resource "aws_dynamodb_table" "tfc_example_table" {
  name = "${var.db_table_name}-${random_pet.table_name.id}"

  read_capacity  = var.db_read_capacity
  write_capacity = var.db_write_capacity
  hash_key       = "UUID"

  attribute {
    name = "UUID"
    type = "S"
  }
}
