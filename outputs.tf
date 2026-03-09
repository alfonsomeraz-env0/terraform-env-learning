output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = aws_s3_bucket.lab.bucket
}

output "bucket_arn" {
  description = "ARN of the created S3 bucket"
  value       = aws_s3_bucket.lab.arn
}

output "bucket_regional_domain" {
  description = "Regional domain name of the bucket"
  value       = aws_s3_bucket.lab.bucket_regional_domain_name
}