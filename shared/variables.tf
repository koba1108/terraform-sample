variable "cloudfront_distribution_aliases" {
  type: string
  description: ""
  default = "assets.service-name.jp"
}

variable "cloudfront_distribution_origin" {
  type: string
  description: ""
  default = "assets.service-name.s3-ap-northeast-1.amazonaws.com"
}
