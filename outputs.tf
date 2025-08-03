output "s3_bucket_name" {
  value = aws_s3_bucket.datalake.id
}

output "kinesis_stream_name" {
  value = aws_kinesis_stream.healthcare_stream.name
}

output "lambda_function_name" {
  value = aws_lambda_function.etl_function.function_name
}
