resource "fastly_service_v1" "fastly-terraform" {
  name = "${var.fastly-service-name}"
  force_destroy = true
  default_ttl = "${var.defaultTtl}"
  

  domain {
    name    = "${var.domain_name}"
    comment = "demo"
  }

  backend {
    address = "${var.address_1}"
    name    = "backend_1"
    port    = 80
  }


backend {
    address = "${var.address_2}"
    name    = "backend_2"
    port    = 80
  }



backend {
    address = "${var.address_3}"
    name    = "backend_3"
    port    = 80
  }


backend {
    address = "${var.address_4}"
    name    = "backend_4"
    port    = 80
  }



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




}
