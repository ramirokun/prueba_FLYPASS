output "eks_role_arn" {
  description = "ARN del IAM Role para el clúster de EKS"
  value       = aws_iam_role.eks_rol.arn
}