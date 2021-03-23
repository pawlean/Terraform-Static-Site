resource "aws_s3_bucket" "website_bucket" {
  bucket = var.domain_name
  acl = "public-read" # access control list is set to public i.e. all objects is free to view for everyone, it's an open bucket
  policy = data.aws_iam_policy_document.website_policy.json # This is in iam.tf
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}