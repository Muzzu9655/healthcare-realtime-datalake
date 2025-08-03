variable "aws_region" {
  default = "us-east-1"
}

variable "s3_bucket_name" {
  default = "healthcare-datalake-muzamil"
}

variable "kinesis_stream_name" {
  default = "healthcare-realtime-stream"
}

variable "lambda_function_name" {
  default = "healthcare-etl-lambda"
}
