# todo: moduleに変数を渡すだけ
# S3, dynamodb, lambda

module "s3" {
  source = "../../modules/s3"
}

module "dynamodb" {
  source = "../../modules/dynamodb"
}
