resource "aws_eks_cluster" "eks" {
  name     = var.name_eks
  role_arn = var.role_arn

  vpc_config {
     subnet_ids = var.subnet_ids 
  }

  tags = {
    Name     = var.name_eks
    Username = var.username
  }
}