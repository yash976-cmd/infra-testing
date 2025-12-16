# Public subnets (Web Tier)
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_1_cidr
  availability_zone       = local.az1
  map_public_ip_on_launch = true
  tags = { Name = "${var.project_name}-public-1", Tier = "web" }
}

resource "aws_subnet" "public_2" {
  vpc_id                  = aws_vpc.this.id
  cidr_block              = var.public_subnet_2_cidr
  availability_zone       = local.az2
  map_public_ip_on_launch = true
  tags = { Name = "${var.project_name}-public-2", Tier = "web" }
}

# Private subnets (DB Tier)
resource "aws_subnet" "private_1" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = local.az1
  tags = { Name = "${var.project_name}-private-1", Tier = "db" }
}

resource "aws_subnet" "private_2" {
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_subnet_2_cidr
  availability_zone = local.az2
  tags = { Name = "${var.project_name}-private-2", Tier = "db" }
}