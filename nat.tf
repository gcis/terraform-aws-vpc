#######
# For each nat gateway we need an elastic IP
#######

# nat zone a
resource "aws_eip" "nat_a" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_a" {
  subnet_id = "${aws_subnet.public_a.id}"
  allocation_id = "${aws_eip.nat_a.id}"
  depends_on = ["aws_internet_gateway.development-ig"]
}

# nat zone b
resource "aws_eip" "nat_b" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_b" {
  subnet_id = "${aws_subnet.public_b.id}"
  allocation_id = "${aws_eip.nat_b.id}"
  depends_on = ["aws_internet_gateway.development-ig"]
}

# nat zone c
resource "aws_eip" "nat_c" {
  vpc      = true
}

resource "aws_nat_gateway" "nat_c" {
  subnet_id = "${aws_subnet.public_c.id}"
  allocation_id = "${aws_eip.nat_c.id}"
  depends_on = ["aws_internet_gateway.development-ig"]
}

