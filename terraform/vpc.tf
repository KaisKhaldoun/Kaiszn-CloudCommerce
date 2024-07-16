resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags = { Name = "kaiszn-vpc" }
}

resource "aws_subnet" "subnet" {
  count     = 2
  vpc_id    = aws_vpc.vpc.id
  cidr_block = cidrsubnet(aws_vpc.vpc.cidr_block, 8, count.index)
  tags      = { Name = "kaiszn-subnet-${count.index}" }
}
