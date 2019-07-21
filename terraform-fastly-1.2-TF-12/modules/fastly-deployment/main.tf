resource "fastly_service_v1" "fastly-terraform" {
<<<<<<< HEAD
  name          = var.fastly-service-name
  force_destroy = true
  default_ttl   = var.defaultTtl

  domain {
    name    = var.domain_name
=======
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
  name = "${var.fastly-service-name}"
  force_destroy = true
  default_ttl = "${var.defaultTtl}"
  

  domain {
    name    = "${var.domain_name}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
    comment = "demo"
  }

  backend {
<<<<<<< HEAD
    address = var.address_1
=======
    address = "${var.address_1}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
    name    = "backend_1"
    port    = 80
  }

<<<<<<< HEAD
<<<<<<< HEAD
  backend {
    address = var.address_2
=======

backend {
    address = "${var.address_2}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======

backend {
    address = "${var.address_2}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
    name    = "backend_2"
    port    = 80
  }

<<<<<<< HEAD
<<<<<<< HEAD
  backend {
    address = var.address_3
=======
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a


backend {
    address = "${var.address_3}"
<<<<<<< HEAD
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
    name    = "backend_3"
    port    = 80
  }

<<<<<<< HEAD
<<<<<<< HEAD
  backend {
    address = var.address_4
=======

backend {
    address = "${var.address_4}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======

backend {
    address = "${var.address_4}"
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
    name    = "backend_4"
    port    = 80
  }

<<<<<<< HEAD
<<<<<<< HEAD
=======


>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======


>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
  header {
    destination = "http.x-amz-request-id"
    type        = "cache"
    action      = "delete"
    name        = "remove x-amz-request-id"
  }

  gzip {
    name          = "file extensions and content types"
    extensions    = ["css", "js"]
    content_types = ["text/html", "text/css"]
  }
<<<<<<< HEAD
<<<<<<< HEAD
}

=======
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a




}
<<<<<<< HEAD
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
=======
>>>>>>> a1164ebbc0a99f13d035fe2121bf8020623be74a
