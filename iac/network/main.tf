resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name     = var.name_vpc
    Username = var.username
  }
}

resource "aws_subnet" "subnets" {
  count = length(var.subnet_cidrs)

  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.subnet_cidrs[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "${var.name_vpc}-subnet-${count.index}"
    Username = var.username
  }
}