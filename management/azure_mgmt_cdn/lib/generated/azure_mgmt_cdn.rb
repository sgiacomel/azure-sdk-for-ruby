# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
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
require 'generated/azure_mgmt_cdn/module_definition'
require 'ms_rest_azure'

module Azure::ARM::CDN
  autoload :Profiles,                                           'generated/azure_mgmt_cdn/profiles.rb'
  autoload :Endpoints,                                          'generated/azure_mgmt_cdn/endpoints.rb'
  autoload :Origins,                                            'generated/azure_mgmt_cdn/origins.rb'
  autoload :CustomDomains,                                      'generated/azure_mgmt_cdn/custom_domains.rb'
  autoload :CdnManagementClient,                                'generated/azure_mgmt_cdn/cdn_management_client.rb'

  module Models
    autoload :OriginUpdateParameters,                             'generated/azure_mgmt_cdn/models/origin_update_parameters.rb'
    autoload :OriginListResult,                                   'generated/azure_mgmt_cdn/models/origin_list_result.rb'
    autoload :ErrorResponse,                                      'generated/azure_mgmt_cdn/models/error_response.rb'
    autoload :Sku,                                                'generated/azure_mgmt_cdn/models/sku.rb'
    autoload :ProfileUpdateParameters,                            'generated/azure_mgmt_cdn/models/profile_update_parameters.rb'
    autoload :DeepCreatedOrigin,                                  'generated/azure_mgmt_cdn/models/deep_created_origin.rb'
    autoload :OperationListResult,                                'generated/azure_mgmt_cdn/models/operation_list_result.rb'
    autoload :EndpointListResult,                                 'generated/azure_mgmt_cdn/models/endpoint_list_result.rb'
    autoload :CustomDomainParameters,                             'generated/azure_mgmt_cdn/models/custom_domain_parameters.rb'
    autoload :EndpointUpdateParameters,                           'generated/azure_mgmt_cdn/models/endpoint_update_parameters.rb'
    autoload :CustomDomainListResult,                             'generated/azure_mgmt_cdn/models/custom_domain_list_result.rb'
    autoload :LoadParameters,                                     'generated/azure_mgmt_cdn/models/load_parameters.rb'
    autoload :ValidateCustomDomainInput,                          'generated/azure_mgmt_cdn/models/validate_custom_domain_input.rb'
    autoload :SsoUri,                                             'generated/azure_mgmt_cdn/models/sso_uri.rb'
    autoload :ValidateCustomDomainOutput,                         'generated/azure_mgmt_cdn/models/validate_custom_domain_output.rb'
    autoload :GeoFilter,                                          'generated/azure_mgmt_cdn/models/geo_filter.rb'
    autoload :CheckNameAvailabilityInput,                         'generated/azure_mgmt_cdn/models/check_name_availability_input.rb'
    autoload :ProfileListResult,                                  'generated/azure_mgmt_cdn/models/profile_list_result.rb'
    autoload :CheckNameAvailabilityOutput,                        'generated/azure_mgmt_cdn/models/check_name_availability_output.rb'
    autoload :PurgeParameters,                                    'generated/azure_mgmt_cdn/models/purge_parameters.rb'
    autoload :OperationDisplay,                                   'generated/azure_mgmt_cdn/models/operation_display.rb'
    autoload :Operation,                                          'generated/azure_mgmt_cdn/models/operation.rb'
    autoload :Profile,                                            'generated/azure_mgmt_cdn/models/profile.rb'
    autoload :Endpoint,                                           'generated/azure_mgmt_cdn/models/endpoint.rb'
    autoload :Origin,                                             'generated/azure_mgmt_cdn/models/origin.rb'
    autoload :CustomDomain,                                       'generated/azure_mgmt_cdn/models/custom_domain.rb'
    autoload :SkuName,                                            'generated/azure_mgmt_cdn/models/sku_name.rb'
    autoload :ProfileResourceState,                               'generated/azure_mgmt_cdn/models/profile_resource_state.rb'
    autoload :EndpointResourceState,                              'generated/azure_mgmt_cdn/models/endpoint_resource_state.rb'
    autoload :QueryStringCachingBehavior,                         'generated/azure_mgmt_cdn/models/query_string_caching_behavior.rb'
    autoload :GeoFilterActions,                                   'generated/azure_mgmt_cdn/models/geo_filter_actions.rb'
    autoload :OriginResourceState,                                'generated/azure_mgmt_cdn/models/origin_resource_state.rb'
    autoload :CustomDomainResourceState,                          'generated/azure_mgmt_cdn/models/custom_domain_resource_state.rb'
    autoload :ResourceType,                                       'generated/azure_mgmt_cdn/models/resource_type.rb'
  end
end
