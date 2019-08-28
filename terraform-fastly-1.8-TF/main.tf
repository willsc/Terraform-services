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
      override_host      = "www.foobar.com"
    },
    {
      name    = "backend2"
      address = "${element(var.foobar["dc1"], 1)}" 
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
      override_host      = "www.foobar.com"
    },
  ]
  conditions = [
    {   
     name = "WAF_Prefetch"
     priority = 10
     statement = "req.backend.is_origin && !req.http.rqpass"
     type = "PREFETCH"
   },
   {
     name = "soc_logging"
     priority = 10
     statement = "waf.executed"
     type = "RESPONSE"
   },
   {
     name = "false"
     priority = 10
     statement = "!req.url"
     type = "REQUEST"
   },
  ]
  response_objects =  [
    {
      name = "WAF_Response"
      response = "Forbidden"
      status = "403"
      content = "{ \"Access Denied\" : \"\"} req.http.fastly-soc-x-request-id {\"\" }"
      content_type = "application/json"
      request_condition = "false"
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
  conditions = [
    {   
     name = "WAF_Prefetch"
     priority = 10
     statement = "req.backend.is_origin && !req.http.rqpass"
     type = "PREFETCH"
   },
   {
     name = "soc_logging"
     priority = 10
     statement = "waf.executed"
     type = "RESPONSE"
   },
   {
     name = "false"
     priority = 10
     statement = "!req.url"
     type = "REQUEST"
   },
  ]
  response_objects =  [
    {
      name = "WAF_Response"
      response = "Forbidden"
      status = "403"
      content = "{ \"Access Denied\" : \"\"} req.http.fastly-soc-x-request-id {\"\" }"
      content_type = "application/json"
      request_condition = "false"
    },
  ]
}

module "service3" {
  source = "./modules/fastly"

  name = "service-3"
  domains = [
    {
      name = "www1.frinkbuster.co.uk"
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
  conditions = [
    {   
     name = "WAF_Prefetch"
     priority = 10
     statement = "req.backend.is_origin && !req.http.rqpass"
     type = "PREFETCH"
   },
   {
     name = "soc_logging"
     priority = 10
     statement = "waf.executed"
     type = "RESPONSE"
   },
   {
     name = "false"
     priority = 10
     statement = "!req.url"
     type = "REQUEST"
   },
  ]
  response_objects =  [
    {
      name = "WAF_Response"
      response = "Forbidden"
      status = "403"
      content = "{ \"Access Denied\" : \"\"} req.http.fastly-soc-x-request-id {\"\" }"
      content_type = "application/json"
      request_condition = "false"
    },
  ]
}




module "service4" {
  source = "./modules/fastly"

  name = "service-4"
  domains = [
    {
      name = "www2.frinkbuster.co.uk"
    },
  ]

  backends = [
    {
      name    = "backend1"
      address = "${element(var.foobar3["dc2"], 0)}"
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
    {
      name    = "backend2"
      address = "${element(var.foobar3["dc2"], 1)}"
      port    = 80
      ssl_cert_hostname  = "www.frinkbuster.co.uk"
      ssl_sni_hostname   = "www.frinkbuster.co.uk"
      use_ssl            = true
      ssl_check_cert     = true
    },
  ]
  conditions = [
    {   
     name = "WAF_Prefetch"
     priority = 10
     statement = "req.backend.is_origin && !req.http.rqpass"
     type = "PREFETCH"
   },
   {
     name = "soc_logging"
     priority = 10
     statement = "waf.executed"
     type = "RESPONSE"
   },
   {
     name = "false"
     priority = 10
     statement = "!req.url"
     type = "REQUEST"
   },
  ]
  response_objects =  [
    {
      name = "WAF_Response"
      response = "Forbidden"
      status = "403"
      content = "{ \"Access Denied\" : \"\"} req.http.fastly-soc-x-request-id {\"\" }"
      content_type = "application/json"
      request_condition = "false"
    },
  ]

}
