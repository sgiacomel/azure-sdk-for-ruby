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
require '2017-11-01-preview/generated/azure_mgmt_subscriptions/module_definition'
require 'ms_rest_azure'

module Azure::Subscriptions::Mgmt::V2017_11_01_preview
  autoload :SubscriptionDefinitionsOperationMetadata,           '2017-11-01-preview/generated/azure_mgmt_subscriptions/subscription_definitions_operation_metadata.rb'
  autoload :SubscriptionDefinitions,                            '2017-11-01-preview/generated/azure_mgmt_subscriptions/subscription_definitions.rb'
  autoload :SubscriptionDefinitionsClient,                      '2017-11-01-preview/generated/azure_mgmt_subscriptions/subscription_definitions_client.rb'

  module Models
    autoload :Operation,                                          '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/operation.rb'
    autoload :SubscriptionDefinition,                             '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/subscription_definition.rb'
    autoload :OperationListResult,                                '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/operation_list_result.rb'
    autoload :OperationDisplay,                                   '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/operation_display.rb'
    autoload :ErrorResponse,                                      '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/error_response.rb'
    autoload :SubscriptionDefinitionList,                         '2017-11-01-preview/generated/azure_mgmt_subscriptions/models/subscription_definition_list.rb'
  end
end