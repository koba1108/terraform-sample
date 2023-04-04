resource "aws_s3_bucket" "ykoba-terraform-import-bucket" {
  tags = {
    "tag-key" = "tag-value2"
  }
}
