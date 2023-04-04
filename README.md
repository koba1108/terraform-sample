# terraform-sample
terraform-sample

----------------

## Install for macOS

### 1. install terraform

```shell
$ brew tap hashicorp/tap
$ brew install hashicorp/tap/terraform
```

### 2. install tfenv
```shell
$ brew unlink terraform
$ brew install tfenv
```

### 3. set tf version v1.4.4
```shell
$ tfenv install 1.4.4
$ tfenv use 1.4.4
```

### 4. install tflint
```shell
$ brew install pre-commit
$ brew install tflint
$ brew install tfsec
```

### 5. install terraformer
```shell
$ export PROVIDER={all,google,aws,kubernetes}
$ curl -LO https://github.com/GoogleCloudPlatform/terraformer/releases/download/$(curl -s https://api.github.com/repos/GoogleCloudPlatform/terraformer/releases/latest | grep tag_name | cut -d '"' -f 4)/terraformer-${PROVIDER}-darwin-amd64
$ chmod +x terraformer-${PROVIDER}-darwin-amd64
$ sudo mv terraformer-${PROVIDER}-darwin-amd64 /usr/local/bin/terraformer
```
@see https://github.com/GoogleCloudPlatform/terraformer#installation
