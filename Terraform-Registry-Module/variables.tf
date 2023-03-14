

variable "aws_region" {
    description = "The AWS region in which the S3 bucket will be created."
    type        = string
    default     = "eu-west-1"
}

variable "bucket_name" {
    description = "The S3 bucket name that will contain the static website."
    type        = string
    default     = null
}

variable "index_page" {
    description = "Name of index page file."
    type        = string
    default     = "index.html"
}

variable "error_page" {
    description = "Name of error page file."
    type        = string
    default     = "error.html"
}
