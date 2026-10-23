module "web-server" {
  source        = "./modules"
  instance_type = var.instance_type
  instance_ami  = var.instance_ami

}
