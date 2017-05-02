resource "aws_internet_gateway" "development-ig" {
  vpc_id = "${aws_vpc.development.id}"

  tags {
    Name = "internet-gateway"
//    Environment = "development"
//    Type = "ig"
  }
}
