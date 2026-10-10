output "bedrockagentcore_gateways_authorizer_configuration" {
  description = "Map of authorizer_configuration values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.authorizer_configuration if v.authorizer_configuration != null && length(v.authorizer_configuration) > 0 }
}
output "bedrockagentcore_gateways_authorizer_type" {
  description = "Map of authorizer_type values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.authorizer_type if v.authorizer_type != null && length(v.authorizer_type) > 0 }
}
output "bedrockagentcore_gateways_description" {
  description = "Map of description values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bedrockagentcore_gateways_exception_level" {
  description = "Map of exception_level values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.exception_level if v.exception_level != null && length(v.exception_level) > 0 }
}
output "bedrockagentcore_gateways_gateway_arn" {
  description = "Map of gateway_arn values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.gateway_arn if v.gateway_arn != null && length(v.gateway_arn) > 0 }
}
output "bedrockagentcore_gateways_gateway_id" {
  description = "Map of gateway_id values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.gateway_id if v.gateway_id != null && length(v.gateway_id) > 0 }
}
output "bedrockagentcore_gateways_gateway_url" {
  description = "Map of gateway_url values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.gateway_url if v.gateway_url != null && length(v.gateway_url) > 0 }
}
output "bedrockagentcore_gateways_interceptor_configuration" {
  description = "Map of interceptor_configuration values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.interceptor_configuration if v.interceptor_configuration != null && length(v.interceptor_configuration) > 0 }
}
output "bedrockagentcore_gateways_kms_key_arn" {
  description = "Map of kms_key_arn values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.kms_key_arn if v.kms_key_arn != null && length(v.kms_key_arn) > 0 }
}
output "bedrockagentcore_gateways_name" {
  description = "Map of name values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bedrockagentcore_gateways_policy_engine_configuration" {
  description = "Map of policy_engine_configuration values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.policy_engine_configuration if v.policy_engine_configuration != null && length(v.policy_engine_configuration) > 0 }
}
output "bedrockagentcore_gateways_protocol_configuration" {
  description = "Map of protocol_configuration values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.protocol_configuration if v.protocol_configuration != null && length(v.protocol_configuration) > 0 }
}
output "bedrockagentcore_gateways_protocol_type" {
  description = "Map of protocol_type values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.protocol_type if v.protocol_type != null && length(v.protocol_type) > 0 }
}
output "bedrockagentcore_gateways_region" {
  description = "Map of region values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.region if v.region != null && length(v.region) > 0 }
}
output "bedrockagentcore_gateways_role_arn" {
  description = "Map of role_arn values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "bedrockagentcore_gateways_tags" {
  description = "Map of tags values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "bedrockagentcore_gateways_tags_all" {
  description = "Map of tags_all values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "bedrockagentcore_gateways_workload_identity_details" {
  description = "Map of workload_identity_details values across all bedrockagentcore_gateways, keyed the same as var.bedrockagentcore_gateways"
  value       = { for k, v in aws_bedrockagentcore_gateway.bedrockagentcore_gateways : k => v.workload_identity_details if v.workload_identity_details != null && length(v.workload_identity_details) > 0 }
}

