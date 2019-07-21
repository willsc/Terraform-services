variable "fastly-service-name" {
  default = "testmodule"
}

##default cache time to live applied on Fastly service

variable "defaultTtl" {
  default = 60
}

variable "domain_name" {
  default = "fast.frinkbuster.co.uk"
}



variable "address_1" {
  default = "ec2-52-208-112-155.eu-west-1.compute.amazonaws.com"
}

variable "address_2" {
  default = "ec2-34-253-65-125.eu-west-1.compute.amazonaws.com"
}

variable "address_3" {
  default = "ec2-34-242-201-203.eu-west-1.compute.amazonaws.com"
}

variable "address_4" {
  default = "ec2-63-33-213-245.eu-west-1.compute.amazonaws.com"
}

variable "backend_1" {
  default = "origin1"
}

variable "backend_2" {
  default = "origin2"
}

variable "backend_3" {
  default = "origin3"
}

variable "backend_4" {
  default = "origin4"
}

