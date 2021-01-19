variable "aws_region" {
  type    = string
  default = "eu-north-1"
}

provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIAI6QUFJ36TYT4HFDA"
  secret_key = "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"
}

variable "db_table_name" {
  type    = string
  default = "terraform-learn"
}

variable "db_read_capacity" {
  type    = number
  default = 1
}

variable "db_write_capacity" {
  type    = number
  default = 1
}
