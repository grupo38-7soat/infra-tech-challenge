resource "aws_eks_access_policy_association" "tech-challenge-eks-access-policy" {
  cluster_name  = aws_eks_cluster.tech-challenge-eks-cluster.name
  policy_arn    = var.POLICY_ARN
  principal_arn = var.PRINCIPAL_ARN

  access_scope {
    type = "cluster"
  }
}