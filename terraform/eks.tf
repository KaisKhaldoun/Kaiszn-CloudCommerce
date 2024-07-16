resource "aws_iam_role" "eks_cluster_role" {
  name = "eks_cluster_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = { Service = "eks.amazonaws.com" }
    }]
  })
}

resource "aws_eks_cluster" "kaiszn_cluster" {
  name     = "kaiszn-cluster"
  role_arn = aws_iam_role.eks_cluster_role.arn
  vpc_config { subnet_ids = aws_subnet.subnet[*].id }
}
