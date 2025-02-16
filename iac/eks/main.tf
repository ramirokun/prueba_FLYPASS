#resource "aws_eks_cluster" "eks" {
#  name     = var.name_eks
#  role_arn = var.role_arn
#
#  vpc_config {
#     subnet_ids = var.subnet_ids 
#  }
#
#  tags = {
#    Name     = var.name_eks
#    Username = var.username
#  }
#}
#
#resource "aws_eks_node_group" "node_group" {
#  cluster_name    = aws_eks_cluster.eks.name
#  node_group_name = "${var.name_eks}-single-node"
#  node_role_arn   = var.name_role_nodes_eks
#  subnet_ids      = var.subnet_ids
#
#  scaling_config {
#    desired_size = 1
#    max_size     = 1
#    min_size     = 1
#  }
#
#  ami_type       = "AL2_x86_64"
#  capacity_type  = "SPOT" 
#  disk_size      = 10     
#  instance_types = ["t3.medium"]
#
#  tags = {
#    Name     = "${var.name_eks}-single-node"
#    Username = var.username
#  }
#}