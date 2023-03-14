

module "static_site_s3_bucket" {
    source = "terraform-aws-modules/s3-bucket/aws"
   
    acl = "public-read" 

    bucket = var.bucket_name

    versioning = {
        enabled = true
    }

    website = {
        index_document = var.index_page
        error_document = var.error_page
    }
}

resource "aws_s3_object" "index" {
    bucket = module.static_site_s3_bucket.s3_bucket_id
    acl = "public-read"   
    key = var.index_page                           
    source = var.index_page                       
    content_type = "text/html"
    etag = filemd5(var.index_page)   
}

resource "aws_s3_object" "error" {
    bucket = module.static_site_s3_bucket.s3_bucket_id
    acl = "public-read"
    key =  var.error_page          
    source = var.error_page         
    content_type = "text/html"
    etag = filemd5(var.error_page)  
}




