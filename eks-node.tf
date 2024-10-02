resource "aws_eks_node_group" "tech-challenge-eks-node" {
  cluster_name    = aws_eks_cluster.tech-challenge-eks-cluster.name
  node_group_name = var.EKS_NODE_NAME
  node_role_arn   = var.DEFAULT_ARN
  subnet_ids      = [for subnet in data.aws_subnet.tech-challenge-subnet : subnet.id if subnet.availability_zone != "${var.DEFAULT_REGION}e"]
  disk_size       = 20
  instance_types  = [var.INSTANCE_TYPE]

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }

  update_config {
    max_unavailable = 1
  }
}