variable "DEFAULT_REGION" {
  default = "us-east-1"
}

variable "EKS_CLUSTER_NAME" {
  default = "TECH-CHALLENGE-FAST-FOOD"
}

variable "EKS_NODE_NAME" {
  default = "FAST-FOOD"
}

variable "DEFAULT_ARN" {
  default = "arn:aws:iam::703671910991:role/admin"
}

variable "POLICY_ARN" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "PRINCIPAL_ARN" {
  default = "arn:aws:iam::703671910991:role/admin"
}

variable "ACCESS_CONFIG" {
  default = "API_AND_CONFIG_MAP"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}