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
      address = "ec2-54-246-203-224.eu-west-1.compute.amazonaws.com"
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
    {
      name    = "backend2"
      address = "ec2-63-32-99-16.eu-west-1.compute.amazonaws.com"
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
  ]
}

