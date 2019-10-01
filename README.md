# :bangbang:
# THIS REPOSITORY IS OUT OF DATE

# Terraform AWS - VPC

This simple terraform project helps you set up an AWS VPC with public and
private networks, internet gateway and nat gateways, route tables and db
subnets and default subnet group.


### Getting started

Modify the `variables.tf` file to set the VPC name, the CIDR and all
the other values to match your needs


Run

1. `terraform init` ( if you sety up the backend on S3 )

2. `terraform plan` ( to see the resources that are going to be ceated)

3. `terraform apply` ( to create the resources )

