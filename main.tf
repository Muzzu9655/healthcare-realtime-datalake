terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# S3 Data Lake (Raw + Curated folders)
resource "aws_s3_bucket" "datalake" {
  bucket = var.s3_bucket_name
}

# Kinesis Data Stream (for real-time ingestion simulation)
resource "aws_kinesis_stream" "healthcare_stream" {
  name        = var.kinesis_stream_name
  shard_count = 1
}

# Lambda placeholder for ETL
resource "aws_lambda_function" "etl_function" {
  filename         = "lambda/etl_function.zip"
  function_name    = var.lambda_function_name
  role             = "arn:aws:iam::123456789012:role/lambda-execution-role"
  handler          = "etl_function.handler"
  runtime          = "python3.12"
}
