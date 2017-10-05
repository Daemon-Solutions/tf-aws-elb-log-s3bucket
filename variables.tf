// Global Configuration
variable "name" {
  description = "The desired name prefix for your bucket, and the value for the 'Name' tag"
  type = "string"
}

variable "envname" {
  description = "The desired name suffix for you bucket, and the value for the 'Environment' tag"
  type = "string"
}

variable "service" {
  description = "This will be the value for the 'Service' tag"
  type = "string"
}

variable "owner" {
  description = "This will be the value for the 'owner' tag"
  type = "string"
}

variable "region" {
  description = "The AWS region in which to create your resources"
  type = "string"
  default = "eu-west-1"
}

variable "elb_aws_account" {
  description = "The list of account ARNs for the Elastic Load Balancing service"
  type = "map"
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
