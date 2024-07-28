module "Infrarg-module" {
    source = "../../Modules/Resources_group"
    Infrarg = var.infrarg-module
}

module "Infrastrg-module" {
    depends_on = [ module.Infrarg-module ]
    source = "../../Modules/storage_account"
    Infrastrg = var.infrastrg-module
  
}