module "vpc" {
  source                   = "../../modules/vpc"
  cidr_block               = var.cidr_block
  vpc_name                 = var.vpc_name
  public_subnet_name       = var.public_subnet_name
  private_subnet_name      = var.private_subnet_name
  internet_gateway_name    = var.internet_gateway_name
  public_route_table_name  = var.public_route_table_name
  private_route_table_name = var.private_route_table_name
  natgateway_name          = var.natgateway_name
  eip_id                   = var.eip_id
}

module "security" {
  source          = "../../modules/security"
  vpc_id          = module.vpc.vpc_id
  public_sg_name  = var.public_sg_name
  private_sg_name = var.private_sg_name
}

module "compute" {
  source              = "../../modules/compute"
  public_sg_id        = module.security.public_sg_id
  private_sg_id       = module.security.private_sg_id
  instance_type       = var.instance_type
  key_pair_name       = var.key_pair_name
  public_server_name  = var.public_server_name
  private_server_name = var.private_server_name
  public_subnet_id    = module.vpc.public_subnet_id
  private_subnet_id   = module.vpc.private_subnet_id

  depends_on = [module.security]
}

# module "load" {

# }
