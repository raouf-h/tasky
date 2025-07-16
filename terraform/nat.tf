resource "aws_eip" "nat" {
  domain  = "vpc"
  tags = { Name = "wiz-nat-eip" }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_public_mgmt_id
  tags          = { Name = "wiz-natgw" }
}

resource "aws_route_table" "private" {
  vpc_id = var.vpc_id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw.id
  }
  tags = { Name = "wiz-private-rt" }
}

resource "aws_route_table_association" "eks_a" {
  subnet_id      = var.subnet_private_eks_a
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "eks_b" {
  subnet_id      = var.subnet_private_eks_b
  route_table_id = aws_route_table.private.id
}

