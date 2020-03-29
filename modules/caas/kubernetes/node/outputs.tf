output "sfx_integration_id" {
  description = "SignalFx integration ID"
  value       = signalfx_aws_integration.sfx_integration.integration_id
}

output "sfx_external_id" {
  description = "SignalFx integration external ID"
  value       = signalfx_aws_integration.sfx_integration.external_id
}

