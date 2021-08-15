resource "aws_route53_record" "www" {
  name = "${var.domain_name}"
  type = "A"
  alias {
    name =  aws_s3_bucket.my-website_bucket.website_domain
    zone_id = aws_s3_bucket.my-website_bucket.hosted_zone_id
    evaluate_target_health = false
  }
}
