resource "aws_s3_bucket" "my-website" {
  bucket = "${var.domain_name}"
  acl = "public-read"
  policy = data.aws_iam_policy_document.my-website_policy.json
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}