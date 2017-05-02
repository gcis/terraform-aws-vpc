resource "aws_vpc" "development" {
  cidr_block       = "${var.cidr_block}"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags {
    Name = "${var.vpc_name}"
    //Environment = "development"
    //Type = "vpc"
  }
}