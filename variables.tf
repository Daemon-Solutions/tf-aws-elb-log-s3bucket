// Global Configuration
variable "name" {}

variable "envname" {}

variable "service" {}

variable "owner" {}

variable "region" {
  default = "eu-west-1"
}

variable "elb_aws_account" {
  default = {
    us-east-1      = "127311923021"
    us-west-2      = "797873946194"
    us-west-1      = "027434742980"
    eu-west-1      = "156460612806"
    eu-central-1   = "054676820928"
    ap-southeast-1 = "114774131450"
    ap-northeast-1 = "582318560864"
    ap-southeast-2 = "783225319266"
    ap-northeast-2 = "600734575887"
    sa-east-1      = "507241528517"
    us-gov-west-1  = "048591011584"
    cn-north-1     = "638102146993"
  }
}
