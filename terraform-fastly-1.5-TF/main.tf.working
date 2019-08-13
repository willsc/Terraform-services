module "service1" {
  source = "./modules/fastly"

  name = "service-1"
  domains = [
    {
      name = "www.frinkbuster.co.uk"
    },
  ]

  backends = [
    {
      name    = "backend1"
      address = "${element(var.foobar["dc1"], 0)}" 
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
    {
      name    = "backend2"
      address = "${element(var.foobar["dc1"], 1)}" 
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
  ]
}


module "service2" {
  source = "./modules/fastly"

  name = "service-2"
  domains = [
    {
      name = "www.frinkbuster.com"
    },
  ]

  backends = [
    {
      name    = "backend1"
      address = "${element(var.foobar1["aws"], 0)}"
      port    = 443
      ssl_cert_hostname  = "www.frinkbuster.com"
      ssl_sni_hostname   = "www.frinkbuster.com"
      use_ssl            = true
      ssl_check_cert     = true
    },
    {
      name    = "backend2"
      address = "${element(var.foobar1["aws"], 1)}"
      port    = 443 
      ssl_cert_hostname  = "www.frinkbuster.com"
      ssl_sni_hostname   = "www.frinkbuster.com"
      use_ssl            = true
      ssl_check_cert     = true
    },

{
      name    = "backend3"
      address = "${element(var.foobar1["aws"], 2)}"
      port    = 443
      ssl_cert_hostname  = "www.frinkbuster.com"
      ssl_sni_hostname   = "www.frinkbuster.com"
      use_ssl            = true
      ssl_check_cert     = true
    },
{
      name    = "backend4"
      address = "${element(var.foobar1["aws"], 3)}"
      port    = 443
      ssl_cert_hostname  = "www.frinkbuster.com"
      ssl_sni_hostname   = "www.frinkbuster.com"
      use_ssl            = true
      ssl_check_cert     = true
    },
  ]
}
