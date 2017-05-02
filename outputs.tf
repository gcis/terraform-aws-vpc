######
# Outputs are useful as can be read by other projects
# by importing the state file as data.
# For ruther information https://www.terraform.io/docs/configuration/outputs.html
######

# VPC
output "vpc_id" {
  value = "${aws_vpc.development.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.development.cidr_block}"
}


# Public networks
output "public_a_cidr" {
  value = "${aws_subnet.public_a.cidr_block}"
}

output "public_b_cidr" {
  value = "${aws_subnet.public_b.cidr_block}"
}

output "public_c_cidr" {
  value = "${aws_subnet.public_c.cidr_block}"
}

output "public_a_id" {
  value = "${aws_subnet.public_a.id}"
}

output "public_b_id" {
  value = "${aws_subnet.public_b.id}"
}

output "public_c_id" {
  value = "${aws_subnet.public_c.id}"
}

# Private networks
output "private_a_cidr" {
  value = "${aws_subnet.private_a.cidr_block}"
}

output "private_b_cidr" {
  value = "${aws_subnet.private_b.cidr_block}"
}

output "private_c_cidr" {
  value = "${aws_subnet.private_c.cidr_block}"
}

output "private_a_id" {
  value = "${aws_subnet.private_a.id}"
}

output "private_b_id" {
  value = "${aws_subnet.private_b.id}"
}

output "private_c_id" {
  value = "${aws_subnet.private_c.id}"
}

# DB networks
output "db_a_cidr" {
  value = "${aws_subnet.db_a.cidr_block}"
}

output "db_b_cidr" {
  value = "${aws_subnet.db_b.cidr_block}"
}

output "db_c_cidr" {
  value = "${aws_subnet.db_c.cidr_block}"
}

output "db_a_id" {
  value = "${aws_subnet.db_a.id}"
}

output "db_b_id" {
  value = "${aws_subnet.db_b.id}"
}

output "db_c_id" {
  value = "${aws_subnet.db_c.id}"
}

# Internet Gateway
output "ig_id" {
  value = "${aws_internet_gateway.development-ig.id}"
}