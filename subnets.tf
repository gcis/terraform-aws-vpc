######
# PUBLIC networks, public Ip assigned by default - /24 address space
######
resource "aws_subnet" "public_a" {
  availability_zone = "eu-west-1a"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.public_a}"
  map_public_ip_on_launch = true

  tags {
    Name = "development_public_a"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "public_b" {
  availability_zone = "eu-west-1b"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.public_b}"
  map_public_ip_on_launch = true

  tags {
    Name = "development_public_b"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "public_c" {
  availability_zone = "eu-west-1c"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.public_c}"
  map_public_ip_on_launch = true

  tags {
    Name = "development_public_c"
//    Environment = "development"
//    Type = "subnet"
  }
}


######
# RPIVATE networks, no public Ip assigned by default - /23 address space
######
resource "aws_subnet" "private_a" {
  availability_zone = "eu-west-1a"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.private_a}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_private_a"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "private_b" {
  availability_zone = "eu-west-1b"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.private_b}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_private_b"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "private_c" {
  availability_zone = "eu-west-1c"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.private_c}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_private_c"
//    Environment = "development"
//    Type = "subnet"
  }
}

######
# DB networks, no public Ip assigned by default - /24 address space
######
resource "aws_subnet" "db_a" {
  availability_zone = "eu-west-1a"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.db_a}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_db_a"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "db_b" {
  availability_zone = "eu-west-1b"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.db_b}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_db_b"
//    Environment = "development"
//    Type = "subnet"
  }
}

resource "aws_subnet" "db_c" {
  availability_zone = "eu-west-1c"
  vpc_id     = "${aws_vpc.development.id}"
  cidr_block = "${var.cidr_block.db_c}"
  map_public_ip_on_launch = false

  tags {
    Name = "development_db_c"
//    Environment = "development"
//    Type = "subnet"
  }
}

# deafult development DB subnet group
resource "aws_db_subnet_group" "default" {
  name       = "fuse-development"
  subnet_ids = [
    "${aws_subnet.db_a.id}",
    "${aws_subnet.db_b.id}",
    "${aws_subnet.db_c.id}"
  ]

  tags {
    Name = "Development DB subnet group"
//    Environment = "development"
//    Type = "db_sub_group"
  }
}