resource "aws_security_group" "tech-challenge-sg" {
  name   = "SG-${var.EKS_CLUSTER_NAME}"
  vpc_id = data.aws_vpc.tech-challenge-vpc.id

  ingress {
    description = "HTTP"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}