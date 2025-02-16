resource "aws_ecr_repository" "repo" {
  name = var.repo_name
  tags = {
    Name     = "ecr-repo"
    Username = var.username
  }
}