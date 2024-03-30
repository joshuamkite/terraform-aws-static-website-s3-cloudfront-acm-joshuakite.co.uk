terraform {
  backend "s3" {
    bucket = "235199339961-tfstate"
    key    = "eu-west-1/joshuakite.co.uk/static-website-s3-cloudfront-acm"
    region = "us-east-1"
  }
}
