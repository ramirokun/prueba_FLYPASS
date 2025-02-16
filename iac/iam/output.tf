output "eks_role_arn" {
  description = "ARN del IAM Role para el clúster de EKS"
  value       = aws_iam_role.eks_rol.arn
}

output "node_role_arn" {
  description = "ARN del AIM role para los nodos de eks"
  value = aws_iam_role.eks_node_role.arn  
}