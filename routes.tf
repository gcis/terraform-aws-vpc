######
# Route route table for the public network
# and subnet associations with public subnets
######
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.development.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.development-ig.id}"
  }

  tags {
    Name = "public-rt"
//    Environment = "development"
//    Type = "route_table"
  }
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = "${aws_subnet.public_a.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public_b" {
  subnet_id      = "${aws_subnet.public_b.id}"
  route_table_id = "${aws_route_table.public.id}"
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = "${aws_subnet.public_c.id}"
  route_table_id = "${aws_route_table.public.id}"
}


######
# Route route table for private networks
# and subnet associations
######
resource "aws_route_table" "private_a" {
  vpc_id = "${aws_vpc.development.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_a.id}"
  }

  route {
    cidr_block = "10.0.0.0/16"
    vpc_peering_connection_id = "${aws_vpc_peering_connection.development-to-Fuse.id}"
  }

  tags {
    Name = "private-a-rt"
//    Environment = "development"
//    Type = "route_table"
  }
}

resource "aws_route_table_association" "private_a" {
  subnet_id      = "${aws_subnet.private_a.id}"
  route_table_id = "${aws_route_table.private_a.id}"
}

resource "aws_route_table" "private_b" {
  vpc_id = "${aws_vpc.development.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_b.id}"
  }

  tags {
    Name = "private-b-rt"
//    Environment = "development"
//    Type = "route_table"
  }
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = "${aws_subnet.private_b.id}"
  route_table_id = "${aws_route_table.private_b.id}"
}

resource "aws_route_table" "private_c" {
  vpc_id = "${aws_vpc.development.id}"

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_c.id}"
  }

  tags {
    Name = "private-c-rt"
//    Environment = "development"
//    Type = "route_table"
  }
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = "${aws_subnet.private_c.id}"
  route_table_id = "${aws_route_table.private_c.id}"
}
