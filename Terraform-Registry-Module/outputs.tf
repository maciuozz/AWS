

output "s3_bucket_website_endpoint" {
    description = "The website endpoint."
    value = "http://${module.static_site_s3_bucket.s3_bucket_website_endpoint}"
}