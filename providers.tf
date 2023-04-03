terraform {
  backend "s3" {
    region                  = "ap-northeast-1"
    bucket                  = "ykoba-terraform-sample"
    key                     = "terraform.tfstate"
    shared_credentials_file = "$HOME/.aws/credentials"
    profile                 = "ykoba"
  }
  required_version        = ">=1.4.0"
}

provider aws {
  region                  =  "ap-northeast-1"
  profile                 =  "ykoba"
}
