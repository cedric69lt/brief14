module "ProdModule" {
  source = "../ModuleEnfant"
  instance_size = "Standard_D4s_v3"
  environment = "prod"
  location = "francecentral"
}