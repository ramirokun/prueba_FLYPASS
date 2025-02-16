resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name     = var.name_vpc
    Username = var.username
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name     = "${var.name_vpc}-igw"
    Username = var.username
  }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name     = "${var.name_vpc}-public-rt"
    Username = var.username
  }
}

resource "aws_subnet" "public_subnets" {
  count = length(var.subnet_cidrs)

  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet_cidrs[count.index]
  availability_zone       = var.availability_zones[count.index]
  map_public_ip_on_launch = true  

  tags = {
    Name     = "${var.name_vpc}-public-subnet-${count.index}"
    Username = var.username
  }
}

resource "aws_route_table_association" "public_subnet_assoc" {
  count          = length(var.subnet_cidrs)
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.public_rt.id
}