provider "fastly" {
  api_key = "JlxKkOP3k0Y-UM1QKOcOfkyKuMZ6lrDD"
}

variable "name" {
}

variable "domains" {
}

variable "backends" {
}

variable "conditions" {
}

variable "response_objects" { 
}

resource "fastly_service_v1" "service" {
  name = var.name
  dynamic "domain" {
    for_each = var.domains
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      comment = lookup(domain.value, "comment", null)
      name    = domain.value.name
    }
  }

dynamic "condition" {
  for_each = var.conditions
  content {
    name              = condition.value.name
    priority          = lookup(condition.value, "priority", null)
    statement         = condition.value.statement
    type              = condition.value.type

  }
}

dynamic "response_object" {
  for_each = var.response_objects
  content {
     name              = response_object.value.name
     response          = response_object.value.response
     status            = response_object.value.status
     content           = response_object.value.content
     content_type      = response_object.value.content_type
     request_condition = response_object.value.request_condition
  }
}


 dynamic "backend" {
    for_each = var.backends
    content {
      # TF-UPGRADE-TODO: The automatic upgrade tool can't predict
      # which keys might be set in maps assigned here, so it has
      # produced a comprehensive set here. Consider simplifying
      # this after confirming which keys can be set in practice.

      address               = backend.value.address
      auto_loadbalance      = lookup(backend.value, "auto_loadbalance", null)
      between_bytes_timeout = lookup(backend.value, "between_bytes_timeout", null)
      connect_timeout       = lookup(backend.value, "connect_timeout", null)
      error_threshold       = lookup(backend.value, "error_threshold", null)
      first_byte_timeout    = lookup(backend.value, "first_byte_timeout", null)
      healthcheck           = lookup(backend.value, "healthcheck", null)
      max_conn              = lookup(backend.value, "max_conn", null)
      max_tls_version       = lookup(backend.value, "max_tls_version", null)
      min_tls_version       = lookup(backend.value, "min_tls_version", null)
      name                  = backend.value.name
      override_host         = lookup(backend.value, "override_host", null)
      port                  = lookup(backend.value, "port", null)
      request_condition     = lookup(backend.value, "request_condition", null)
      shield                = lookup(backend.value, "shield", null)
      ssl_ca_cert           = lookup(backend.value, "ssl_ca_cert", null)
      ssl_cert_hostname     = lookup(backend.value, "ssl_cert_hostname", null)
      ssl_check_cert        = lookup(backend.value, "ssl_check_cert", null)
      ssl_ciphers           = lookup(backend.value, "ssl_ciphers", null)
      ssl_client_cert       = lookup(backend.value, "ssl_client_cert", null)
      ssl_client_key        = lookup(backend.value, "ssl_client_key", null)
      ssl_hostname          = lookup(backend.value, "ssl_hostname", null)
      ssl_sni_hostname      = lookup(backend.value, "ssl_sni_hostname", null)
      use_ssl               = lookup(backend.value, "use_ssl", null)
      weight                = lookup(backend.value, "weight", null)
    }
  }
}

