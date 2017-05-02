variable "s3_state_bucket"{
  type = "string"
  default = "YOUR_BUCKET"
}

variable "s3_state_key"{
  type = "string"
  default = "YOUR_FILE_KEY"
}

variable "aws_region"{
  type = "string"
  default = "AWS_REGION"
}

variable "vpc_name" {
  type = "string"
  default = "NAME"
}

variable "cidr_block" {
  type = "map"
  default = {
    VPC = "VPC_CIDR_BLOCK" //eg "192.168.0.0/24"
    public_a = "PUB_A_CIDR_BLOCK"
    public_b = "PUB_B_CIDR_BLOCK"
    public_c = "PUB_C_CIDR_BLOCK"
    private_a = "PRIV_A_CIDR_BLOCK"
    private_b = "PRIV_B_CIDR_BLOCK"
    private_c = "PRIV_C_CIDR_BLOCK"
    db_a = "DB_A_CIDR_BLOCK"
    db_b = "DB_B_CIDR_BLOCK"
    db_c = "DB_C_CIDR_BLOCK"
  } 
}