resource "aws_eks_access_entry" "tech-challenge-eks-access-entry" {
  cluster_name      = aws_eks_cluster.tech-challenge-eks-cluster.name
  principal_arn     = var.PRINCIPAL_ARN
  kubernetes_groups = ["grupo-38"]
  type              = "STANDARD"
}