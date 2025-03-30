module "ec2" {
    source = "./ec2"
}

module "dns" {
    source = "./dns"
    Private_ip = module.ec2.private_ip

}