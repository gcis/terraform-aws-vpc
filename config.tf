######
# Uncomment this part if you want to store the state on S3
# as terraform backend
######
//terraform {
//  backend "s3" {
//    bucket = "${var.s3_state_bucket}"
//    key    = "${var.s3_state_key}"
//    region = "${var.aws_region}"
//  }
//}

provider "aws" {
  region = "${var.aws_region}"
}
