resource "aws_eks_cluster" "tech-challenge-eks-cluster" {
  name     = var.EKS_CLUSTER_NAME
  role_arn = var.DEFAULT_ARN

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.tech-challenge-subnet : subnet.id if subnet.availability_zone != "${var.DEFAULT_REGION}e"]
    security_group_ids = [aws_security_group.tech-challenge-sg.id]
  }

  access_config {
    authentication_mode = var.ACCESS_CONFIG
  }
}