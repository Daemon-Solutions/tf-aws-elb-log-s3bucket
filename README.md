# Module for creating S3 logging bucket for ELBs
This module can be used as a standalone module for what ever purpouse or can be
linked with
[tf-aws-asg-elb](https://git.bashton.net/Bashton-Terraform-Modules/tf-aws-asg-elb)
module. Output of this module can be used as a param for the latter one allowing
for using single S3 bucket as a ELB logs store facility.

Bucket name convention: `${var.name}-${var.envname}`
## Usage

```
module "elb_log_s3bucket" {
  source = "../tf-aws-elb-log-s3bucket"

  name    = "elb-logs"
  envname = "${var.envname}"
  service = "pm"
  owner   = "${var.owner}"
}
```

## Variables
* `name` - distinctive part of the bucket name
* `envname` - name of the environment in which bucket is created
* `service` - value for the `service` tag
* `owner` - value for the `owner` tag (may be used in billing for ex.)

## Outputs
* `id` - bucket ID
