# 作業メモ

## Provider Backend の設定

### 1. S3をバックエンドにする

AWSにログインし、`providers.tf`に記述したS3バケットを作成する（ここは手動ぽい）

```terraform
terraform {
  backend "s3" {
    bucket = "aws-terraform" # バケット名
    key    = "terraform.tfstate" # ファイル名
    # 下記はプロジェクト毎で要相談
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "ykoba"
  }
}
```
