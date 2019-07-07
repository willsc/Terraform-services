#provider "fastly" {}

module "fastl-config" {
 source = "./modules/fastly-deployment"
 
 domain_name = "www.frinkbuster.co.uk"


}
