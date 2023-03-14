
resource "aws_s3_bucket" "this" {
    bucket = var.bucket
}

resource "aws_s3_bucket_acl" "this" {
    bucket = aws_s3_bucket.this.id
    acl = "public-read"
}

resource "aws_s3_bucket_versioning" "this" {
    bucket = aws_s3_bucket.this.id
    versioning_configuration {
        status = "Enabled"
    }
}

resource "aws_s3_bucket_website_configuration" "this" {
    bucket = aws_s3_bucket.this.id

    index_document {
        suffix = var.index_page
    }

    error_document {
        key = var.error_page
    }
}

