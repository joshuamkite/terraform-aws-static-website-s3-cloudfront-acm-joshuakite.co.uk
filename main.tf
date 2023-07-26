module "static-website-s3-cloudfront-acm" {
  source                            = "joshuamkite/static-website-s3-cloudfront-acm/aws"
  version                           = "2.2.0"
  domain_name                       = var.domain_name
  s3_bucket_custom_name             = "${var.domain_name}-${var.region}-${data.aws_caller_identity.current.account_id}"
  cloudfront_custom_error_responses = var.cloudfront_custom_error_responses
  providers = {
    aws.us-east-1 = aws.us-east-1
    aws           = aws
  }
}

data "aws_caller_identity" "current" {}
