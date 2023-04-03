# 既存リソースのimport手順

## AWS

### 1. terraform import で既存リソースをインポートする

本体は、`modules/s3/main.tf` をmain.tfで呼び出してる。

```shell
$ terraform import module.s3.aws_s3_bucket.${リソースID} ${s3-bucket-name}
```

### 2. terraform plan で差分を確認する

```shell
$ terraform plan
```

### 3. 差分がなくなるようにmoduleを修正する

### 4. terraform apply でリソースを反映する

```shell
$ terraform apply
```

## 参考記事

1. https://rurukblog.com/post/terraform-import/
