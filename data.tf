data "aws_vpc" "tech-challenge-vpc" {
  cidr_block = "172.31.0.0/16"
}

data "aws_subnets" "tech-challenge-subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.tech-challenge-vpc.id]
  }
}

data "aws_subnet" "tech-challenge-subnet" {
  for_each = toset(data.aws_subnets.tech-challenge-subnets.ids)
  id       = each.value
}