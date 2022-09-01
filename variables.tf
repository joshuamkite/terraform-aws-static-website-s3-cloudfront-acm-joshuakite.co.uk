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