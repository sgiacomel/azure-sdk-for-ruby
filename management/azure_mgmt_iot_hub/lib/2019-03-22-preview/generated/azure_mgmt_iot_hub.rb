# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2019-03-22-preview/generated/azure_mgmt_iot_hub/module_definition'
require 'ms_rest_azure'

module Azure::IotHub::Mgmt::V2019_03_22_preview
  autoload :Operations,                                         '2019-03-22-preview/generated/azure_mgmt_iot_hub/operations.rb'
  autoload :IotHubResource,                                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/iot_hub_resource.rb'
  autoload :ResourceProviderCommon,                             '2019-03-22-preview/generated/azure_mgmt_iot_hub/resource_provider_common.rb'
  autoload :Certificates,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/certificates.rb'
  autoload :IotHub,                                             '2019-03-22-preview/generated/azure_mgmt_iot_hub/iot_hub.rb'
  autoload :IotHubClient,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/iot_hub_client.rb'

  module Models
    autoload :IotHubQuotaMetricInfo,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info.rb'
    autoload :IotHubQuotaMetricInfoListResult,                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_quota_metric_info_list_result.rb'
    autoload :CertificateProperties,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_properties.rb'
    autoload :EndpointHealthData,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_data.rb'
    autoload :CertificateListDescription,                         '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_list_description.rb'
    autoload :EndpointHealthDataListResult,                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_data_list_result.rb'
    autoload :CertificatePropertiesWithNonce,                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_properties_with_nonce.rb'
    autoload :RegistryStatistics,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/registry_statistics.rb'
    autoload :SharedAccessSignatureAuthorizationRule,             '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule.rb'
    autoload :JobResponse,                                        '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/job_response.rb'
    autoload :EventHubProperties,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/event_hub_properties.rb'
    autoload :JobResponseListResult,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/job_response_list_result.rb'
    autoload :RoutingServiceBusTopicEndpointProperties,           '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_service_bus_topic_endpoint_properties.rb'
    autoload :IotHubCapacity,                                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_capacity.rb'
    autoload :RoutingStorageContainerProperties,                  '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_storage_container_properties.rb'
    autoload :IotHubSkuDescription,                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description.rb'
    autoload :RouteProperties,                                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/route_properties.rb'
    autoload :TagsResource,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/tags_resource.rb'
    autoload :EnrichmentProperties,                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/enrichment_properties.rb'
    autoload :EventHubConsumerGroupInfo,                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/event_hub_consumer_group_info.rb'
    autoload :StorageEndpointProperties,                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/storage_endpoint_properties.rb'
    autoload :EventHubConsumerGroupsListResult,                   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/event_hub_consumer_groups_list_result.rb'
    autoload :FeedbackProperties,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/feedback_properties.rb'
    autoload :IotHubSkuDescriptionListResult,                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_description_list_result.rb'
    autoload :IotHubPropertiesDeviceStreams,                      '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_properties_device_streams.rb'
    autoload :IotHubDescriptionListResult,                        '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_description_list_result.rb'
    autoload :IotHubSkuInfo,                                      '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_info.rb'
    autoload :OperationInputs,                                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/operation_inputs.rb'
    autoload :Resource,                                           '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/resource.rb'
    autoload :IotHubNameAvailabilityInfo,                         '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_name_availability_info.rb'
    autoload :OperationDisplay,                                   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/operation_display.rb'
    autoload :Name,                                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/name.rb'
    autoload :OperationListResult,                                '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/operation_list_result.rb'
    autoload :UserSubscriptionQuota,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/user_subscription_quota.rb'
    autoload :CertificateVerificationDescription,                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_verification_description.rb'
    autoload :UserSubscriptionQuotaListResult,                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/user_subscription_quota_list_result.rb'
    autoload :CertificateBodyDescription,                         '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_body_description.rb'
    autoload :RoutingMessage,                                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_message.rb'
    autoload :IpFilterRule,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/ip_filter_rule.rb'
    autoload :RoutingTwinProperties,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_twin_properties.rb'
    autoload :RoutingEventHubProperties,                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_event_hub_properties.rb'
    autoload :RoutingTwin,                                        '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_twin.rb'
    autoload :FallbackRouteProperties,                            '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/fallback_route_properties.rb'
    autoload :TestAllRoutesInput,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_all_routes_input.rb'
    autoload :MessagingEndpointProperties,                        '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/messaging_endpoint_properties.rb'
    autoload :MatchedRoute,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/matched_route.rb'
    autoload :IotHubProperties,                                   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_properties.rb'
    autoload :TestAllRoutesResult,                                '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_all_routes_result.rb'
    autoload :SharedAccessSignatureAuthorizationRuleListResult,   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/shared_access_signature_authorization_rule_list_result.rb'
    autoload :TestRouteInput,                                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_route_input.rb'
    autoload :ErrorDetails,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/error_details.rb'
    autoload :RouteErrorPosition,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/route_error_position.rb'
    autoload :CertificateWithNonceDescription,                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_with_nonce_description.rb'
    autoload :RouteErrorRange,                                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/route_error_range.rb'
    autoload :RoutingEndpoints,                                   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_endpoints.rb'
    autoload :RouteCompilationError,                              '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/route_compilation_error.rb'
    autoload :CloudToDeviceProperties,                            '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/cloud_to_device_properties.rb'
    autoload :TestRouteResultDetails,                             '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_route_result_details.rb'
    autoload :Operation,                                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/operation.rb'
    autoload :TestRouteResult,                                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_route_result.rb'
    autoload :RoutingServiceBusQueueEndpointProperties,           '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_service_bus_queue_endpoint_properties.rb'
    autoload :ExportDevicesRequest,                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/export_devices_request.rb'
    autoload :CertificateDescription,                             '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/certificate_description.rb'
    autoload :ImportDevicesRequest,                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/import_devices_request.rb'
    autoload :RoutingProperties,                                  '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_properties.rb'
    autoload :FailoverInput,                                      '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/failover_input.rb'
    autoload :IotHubDescription,                                  '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_description.rb'
    autoload :AccessRights,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/access_rights.rb'
    autoload :IpFilterActionType,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/ip_filter_action_type.rb'
    autoload :RoutingSource,                                      '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/routing_source.rb'
    autoload :Capabilities,                                       '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/capabilities.rb'
    autoload :IotHubSku,                                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku.rb'
    autoload :IotHubSkuTier,                                      '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_sku_tier.rb'
    autoload :EndpointHealthStatus,                               '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/endpoint_health_status.rb'
    autoload :JobType,                                            '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/job_type.rb'
    autoload :JobStatus,                                          '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/job_status.rb'
    autoload :IotHubScaleType,                                    '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_scale_type.rb'
    autoload :IotHubNameUnavailabilityReason,                     '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/iot_hub_name_unavailability_reason.rb'
    autoload :TestResultStatus,                                   '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/test_result_status.rb'
    autoload :RouteErrorSeverity,                                 '2019-03-22-preview/generated/azure_mgmt_iot_hub/models/route_error_severity.rb'
  end
end
