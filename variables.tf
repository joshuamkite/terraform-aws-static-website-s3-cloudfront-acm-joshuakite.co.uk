variable "domain_name" {
  default = "joshuakite.co.uk"
}

variable "region" {
  default = "eu-west-2"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Test"
    Owner       = "Joshua"
    Project     = "personal website"
    plan_repo   = "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-acm-joshuakite.co.uk.git"
    module_repo = "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-acm.git"
  }
}

variable "cloudfront_custom_error_responses" {
  type = list(any)
  default = [
    {
      error_code            = 403
      response_code         = 404
      error_caching_min_ttl = 10
      response_page_path    = "/404.html"
    },
    {
      error_code            = 404
      response_code         = 404
      error_caching_min_ttl = 10
      response_page_path    = "/404.html"
    }
  ]
}