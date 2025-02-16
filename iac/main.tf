module "iam" {
  source   = "./iam"
  username= var.tags.username
  name_role_eks= var.tags.name_role_eks
  name_role_storage= var.tags.name_role_storage
  name_s3 = var.tags.name_s3
}

module "network" {
  source      = "./network"
  vpc_cidr    = var.network.vpc_cidr
  subnet_cidrs = var.network.subnet_cidrs
  az          = "us-east-1a"
  name_vpc = var.tags.name_vpc
  name_subnet = var.tags.name_subnet
  availability_zones = var.network.availability_zones
  username= var.tags.username
}

module "eks" {
  source    = "./eks"
  subnet_ids   = module.network.subnet_ids
  role_arn =   module.iam.eks_role_arn
  name_eks = var.tags.name_eks
  username= var.tags.username
    depends_on = [module.network,
                module.iam.eks_role_arn         
                ]
}

module "s3" {
  source      = "./s3"
  bucket_name = var.tags.name_s3
  username= var.tags.username
}

module "ecr" {
  source    = "./ecr"
  repo_name = var.tags.name_repo
  username= var.tags.username
  depends_on = [module.network]
}


