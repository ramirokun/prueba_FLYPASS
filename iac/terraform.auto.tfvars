tags = {
    name_ecr = "ecr_flypass"
    name_eks = "eks_flypass"
    name_role_eks = "role_aks_flypass"
    name_role_storage = "role_s3_upload"
    name_vpc = "vpc_flypass"
    name_subnet = "subnet_flypass"
    az       = "us-east-1a"
    name_s3 = "file-recolector-timestamp-16-02-2025"
    name_repo = "repo_flipass"
    username= "RamiroMeneses"
}
network = {
    vpc_cidr    = "172.20.0.0/16"
    subnet_cidrs = ["172.20.0.0/24", "172.20.2.0/24"]
    availability_zones = ["us-east-1a", "us-east-1b"]

}
