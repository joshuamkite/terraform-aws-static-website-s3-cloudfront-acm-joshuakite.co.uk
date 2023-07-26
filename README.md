# terraform-aws-static-website-s3-cloudfront-joshuakite.co.uk

This Terraform deploys resources for my static website [joshuakite.co.uk](joshuakite.co.uk) using my public terrafrom module, AWS S3 and Cloudfront with TLS and a public DNS entry together with a suitable ACM certificate and validation. The apex domain is aliased to the www subdomain. Subsequent website deployment uses Hugo

## N.B. S3 Backend not committed to public repo for security reasons

## Requirements

| Name                                                                      | Version  |
| ------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws)                   | >= 4.2.0 |

## Providers

| Name                                              | Version |
| ------------------------------------------------- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.9.0   |

## Modules

| Name                                                                                                                                 | Source                                           | Version |
| ------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------ | ------- |
| <a name="module_static-website-s3-cloudfront-acm"></a> [static-website-s3-cloudfront-acm](#module\_static-website-s3-cloudfront-acm) | joshuamkite/static-website-s3-cloudfront-acm/aws | 2.2.0   |

## Resources

| Name                                                                                                                          | Type        |
| ----------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

| Name                                                                                                                                        | Description | Type          | Default                                                                                                                                                                                                                                                                                                                           | Required |
| ------------------------------------------------------------------------------------------------------------------------------------------- | ----------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_cloudfront_custom_error_responses"></a> [cloudfront\_custom\_error\_responses](#input\_cloudfront\_custom\_error\_responses) | n/a         | `list(any)`   | <pre>[<br>  {<br>    "error_caching_min_ttl": 10,<br>    "error_code": 403,<br>    "response_code": 404,<br>    "response_page_path": "/404.html"<br>  },<br>  {<br>    "error_caching_min_ttl": 10,<br>    "error_code": 404,<br>    "response_code": 404,<br>    "response_page_path": "/404.html"<br>  }<br>]</pre>            |    no    |
| <a name="input_domain_name"></a> [domain\_name](#input\_domain\_name)                                                                       | n/a         | `string`      | `"joshuakite.co.uk"`                                                                                                                                                                                                                                                                                                              |    no    |
| <a name="input_region"></a> [region](#input\_region)                                                                                        | n/a         | `string`      | `"eu-west-2"`                                                                                                                                                                                                                                                                                                                     |    no    |
| <a name="input_tags"></a> [tags](#input\_tags)                                                                                              | n/a         | `map(string)` | <pre>{<br>  "Environment": "Test",<br>  "Owner": "Joshua",<br>  "Project": "personal website",<br>  "module_repo": "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-acm.git",<br>  "plan_repo": "git@github.com:joshuamkite/terraform-aws-static-website-s3-cloudfront-acm-joshuakite.co.uk.git"<br>}</pre> |    no    |

## Outputs

| Name                                                                                                                   | Description |
| ---------------------------------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_acm_certificate_id"></a> [acm\_certificate\_id](#output\_acm\_certificate\_id)                         | n/a         |
| <a name="output_cloudfront_distribution_id"></a> [cloudfront\_distribution\_id](#output\_cloudfront\_distribution\_id) | n/a         |
| <a name="output_cloudfront_domain_name"></a> [cloudfront\_domain\_name](#output\_cloudfront\_domain\_name)             | n/a         |
| <a name="output_s3_bucket_arn"></a> [s3\_bucket\_arn](#output\_s3\_bucket\_arn)                                        | n/a         |
| <a name="output_s3_bucket_id"></a> [s3\_bucket\_id](#output\_s3\_bucket\_id)                                           | n/a         |
| <a name="output_website_url"></a> [website\_url](#output\_website\_url)                                                | n/a         |
