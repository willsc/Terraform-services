#provider "fastly" {}

module "fastl-config" {
  source = "./modules/fastly-deployment"

  domain_name = "www.frinkbuster.co.uk"
<<<<<<< HEAD

  address_1 = "ec2-52-208-112-155.eu-west-1.compute.amazonaws.com"
  address_2 = "ec2-34-253-65-125.eu-west-1.compute.amazonaws.com"
  address_3 = "ec2-34-242-201-203.eu-west-1.compute.amazonaws.com"
  address_4 = "ec2-63-33-213-245.eu-west-1.compute.amazonaws.com"
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
}

