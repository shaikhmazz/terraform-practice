module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  name               = var.vpc-name
  cidr               = var.vpc-cidr
  azs                = [var.zone1, var.zone2, var.zone3]
  public_subnets     = [var.pub-sub-1, var.pub-sub-2, var.pub-sub-3]
  private_subnets    = [var.priv-sub-1, var.priv-sub-2, var.priv-sub-3]
  enable_nat_gateway = true
  single_nat_gateway = true
  tags = {
    Name = var.project
  }
}
