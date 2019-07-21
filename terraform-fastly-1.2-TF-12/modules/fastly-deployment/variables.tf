variable "fastly-service-name" {
  default = "testmodule"
}

##default cache time to live applied on Fastly service

variable "defaultTtl" {
  default = 60
}

variable "domain_name" {
<<<<<<< HEAD
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
=======
  default="fast.frinkbuster.co.uk"
}

variable "address_1" {
  default = "ec2-54-246-203-224.eu-west-1.compute.amazonaws.com"
}


variable "address_2" {
  default = "ec2-63-32-99-16.eu-west-1.compute.amazonaws.com"
}


variable "address_3" {
  default = "ec2-54-246-154-199.eu-west-1.compute.amazonaws.com"
}


variable "address_4" {
  default = "ec2-54-246-203-224.eu-west-1.compute.amazonaws.com"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
}

variable "backend_1" {
  default = "origin1"
}

<<<<<<< HEAD
=======

>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
variable "backend_2" {
  default = "origin2"
}

variable "backend_3" {
  default = "origin3"
}

variable "backend_4" {
  default = "origin4"
}
<<<<<<< HEAD

=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
