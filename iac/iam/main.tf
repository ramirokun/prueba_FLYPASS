resource "aws_iam_role" "eks_rol" {
  name = var.name_role_eks

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "eks.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })

  tags = {
    Name     = var.name_role_eks
    Username = var.username
  }
}

resource "aws_iam_role_policy_attachment" "eks_policy" {
  role       = aws_iam_role.eks_rol.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}


resource "aws_iam_policy" "s3_upload_policy" {
  name        = var.name_role_storage
  description = "Permite subir archivos a S3 en la carpeta 'outputs'"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:PutObject"]
        Resource = "arn:aws:s3:::${var.name_s3}/outputs/*"
      }
    ]
  })

  tags = {
    Name     = var.name_role_storage
    Username = var.username
  }
}
