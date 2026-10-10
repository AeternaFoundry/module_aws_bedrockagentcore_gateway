variable "bedrockagentcore_gateways" {
  description = <<EOT
Map of bedrockagentcore_gateways, attributes below
Required:
    - authorizer_type
    - name
    - role_arn
Optional:
    - description
    - exception_level
    - kms_key_arn
    - protocol_type
    - region
    - tags
    - authorizer_configuration (block):
        - custom_jwt_authorizer (optional, block):
            - allowed_audience (optional)
            - allowed_clients (optional)
            - allowed_scopes (optional)
            - allowed_workload_configuration (optional, block):
                - hosting_environment (optional, block):
                    - arn (required)
                - workload_identities (optional)
            - custom_claim (optional, block):
                - authorizing_claim_match_value (optional, block):
                    - claim_match_operator (required)
                    - claim_match_value (optional, block):
                        - match_value_string (optional)
                        - match_value_string_list (optional)
                - inbound_token_claim_name (required)
                - inbound_token_claim_value_type (required)
            - discovery_url (required)
            - private_endpoint (optional, block):
                - managed_vpc_resource (optional, block):
                    - endpoint_ip_address_type (required)
                    - routing_domain (optional)
                    - security_group_ids (optional)
                    - subnet_ids (required)
                    - tags (optional)
                    - vpc_identifier (required)
                - self_managed_lattice_resource (optional, block):
                    - resource_configuration_identifier (required)
            - private_endpoint_overrides (optional, block):
                - domain (required)
                - private_endpoint (optional, block):
                    - managed_vpc_resource (optional, block):
                        - endpoint_ip_address_type (required)
                        - routing_domain (optional)
                        - security_group_ids (optional)
                        - subnet_ids (required)
                        - tags (optional)
                        - vpc_identifier (required)
                    - self_managed_lattice_resource (optional, block):
                        - resource_configuration_identifier (required)
    - interceptor_configuration (block):
        - input_configuration (optional, block):
            - pass_request_headers (required)
        - interception_points (required)
        - interceptor (optional, block):
            - lambda (optional, block):
                - arn (required)
    - policy_engine_configuration (block):
        - arn (required)
        - mode (required)
    - protocol_configuration (block):
        - mcp (optional, block):
            - instructions (optional)
            - search_type (optional)
            - session_configuration (optional, block):
                - session_timeout_in_seconds (optional)
            - streaming_configuration (optional, block):
                - enable_response_streaming (optional)
            - supported_versions (optional)
EOT

  type = map(object({
    authorizer_type = string
    name            = string
    role_arn        = string
    description     = optional(string)
    exception_level = optional(string)
    kms_key_arn     = optional(string)
    protocol_type   = optional(string)
    region          = optional(string)
    tags            = optional(map(string))
    authorizer_configuration = optional(list(object({
      custom_jwt_authorizer = optional(list(object({
        allowed_audience = optional(set(string))
        allowed_clients  = optional(set(string))
        allowed_scopes   = optional(set(string))
        allowed_workload_configuration = optional(list(object({
          hosting_environment = optional(list(object({
            arn = string
          })))
          workload_identities = optional(list(string))
        })))
        custom_claim = optional(list(object({
          authorizing_claim_match_value = optional(list(object({
            claim_match_operator = string
            claim_match_value = optional(list(object({
              match_value_string      = optional(string)
              match_value_string_list = optional(set(string))
            })))
          })))
          inbound_token_claim_name       = string
          inbound_token_claim_value_type = string
        })))
        discovery_url = string
        private_endpoint = optional(list(object({
          managed_vpc_resource = optional(list(object({
            endpoint_ip_address_type = string
            routing_domain           = optional(string)
            security_group_ids       = optional(set(string))
            subnet_ids               = set(string)
            tags                     = optional(map(string))
            vpc_identifier           = string
          })))
          self_managed_lattice_resource = optional(list(object({
            resource_configuration_identifier = string
          })))
        })))
        private_endpoint_overrides = optional(list(object({
          domain = string
          private_endpoint = optional(list(object({
            managed_vpc_resource = optional(list(object({
              endpoint_ip_address_type = string
              routing_domain           = optional(string)
              security_group_ids       = optional(set(string))
              subnet_ids               = set(string)
              tags                     = optional(map(string))
              vpc_identifier           = string
            })))
            self_managed_lattice_resource = optional(list(object({
              resource_configuration_identifier = string
            })))
          })))
        })))
      })))
    })))
    interceptor_configuration = optional(list(object({
      input_configuration = optional(list(object({
        pass_request_headers = bool
      })))
      interception_points = set(string)
      interceptor = optional(list(object({
        lambda = optional(list(object({
          arn = string
        })))
      })))
    })))
    policy_engine_configuration = optional(list(object({
      arn  = string
      mode = string
    })))
    protocol_configuration = optional(list(object({
      mcp = optional(list(object({
        instructions = optional(string)
        search_type  = optional(string)
        session_configuration = optional(list(object({
          session_timeout_in_seconds = optional(number)
        })))
        streaming_configuration = optional(list(object({
          enable_response_streaming = optional(bool)
        })))
        supported_versions = optional(set(string))
      })))
    })))
  }))
}

