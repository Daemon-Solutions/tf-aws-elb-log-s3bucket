// S3 Bucket For Logs
resource "aws_s3_bucket" "elb_log_bucket" {
  bucket = "${var.name}-${var.envname}"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid"       : "AWSELBS3Logging",
      "Effect"    : "Allow",
      "Action"    : "s3:PutObject",
      "Principal" : {"AWS": "arn:aws:iam::${lookup(var.elb_aws_account, var.region)}:root"},
      "Resource"  : "arn:aws:s3:::${var.name}-${var.envname}/*"
    }
  ]
}
POLICY

  tags {
    Name        = "${var.name}"
    Environment = "${var.envname}"
    Service     = "${var.service}"
    owner       = "${var.owner}"
  }
}
