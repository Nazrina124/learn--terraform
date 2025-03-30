module "ec2" {
    source = "./ec2"
}

module "private_ip" {
    source ="./dns"
    Private_ip = module.ec2.private_ip

}