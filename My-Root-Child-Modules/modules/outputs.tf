
output "s3_bucket_website_endpoint" {
    description = "The website endpoint."
    value = aws_s3_bucket_website_configuration.this.website_endpoint
}

output "s3_bucket_id" {
    description = "Bucket Name."
    value = aws_s3_bucket.this.bucket
}