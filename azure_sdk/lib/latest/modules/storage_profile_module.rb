# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_storage'

module Azure::Profiles::Latest
  module Storage
    module Mgmt
      Operations = Azure::Storage::Mgmt::V2019_04_01::Operations
      Skus = Azure::Storage::Mgmt::V2019_04_01::Skus
      StorageAccounts = Azure::Storage::Mgmt::V2019_04_01::StorageAccounts
      Usages = Azure::Storage::Mgmt::V2019_04_01::Usages
      ManagementPolicies = Azure::Storage::Mgmt::V2019_04_01::ManagementPolicies
      BlobServices = Azure::Storage::Mgmt::V2019_04_01::BlobServices
      BlobContainers = Azure::Storage::Mgmt::V2019_04_01::BlobContainers

      module Models
        AccountSasParameters = Azure::Storage::Mgmt::V2019_04_01::Models::AccountSasParameters
        OperationDisplay = Azure::Storage::Mgmt::V2019_04_01::Models::OperationDisplay
        ListAccountSasResponse = Azure::Storage::Mgmt::V2019_04_01::Models::ListAccountSasResponse
        MetricSpecification = Azure::Storage::Mgmt::V2019_04_01::Models::MetricSpecification
        ServiceSasParameters = Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSasParameters
        Operation = Azure::Storage::Mgmt::V2019_04_01::Models::Operation
        ListServiceSasResponse = Azure::Storage::Mgmt::V2019_04_01::Models::ListServiceSasResponse
        StorageAccountCheckNameAvailabilityParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCheckNameAvailabilityParameters
        DateAfterModification = Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterModification
        Restriction = Azure::Storage::Mgmt::V2019_04_01::Models::Restriction
        ManagementPolicyBaseBlob = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyBaseBlob
        StorageSkuListResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageSkuListResult
        DateAfterCreation = Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterCreation
        CustomDomain = Azure::Storage::Mgmt::V2019_04_01::Models::CustomDomain
        ManagementPolicySnapShot = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySnapShot
        EncryptionServices = Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionServices
        ManagementPolicyAction = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyAction
        Encryption = Azure::Storage::Mgmt::V2019_04_01::Models::Encryption
        ManagementPolicyFilter = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyFilter
        IPRule = Azure::Storage::Mgmt::V2019_04_01::Models::IPRule
        ManagementPolicyDefinition = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyDefinition
        Identity = Azure::Storage::Mgmt::V2019_04_01::Models::Identity
        ManagementPolicyRule = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyRule
        Endpoints = Azure::Storage::Mgmt::V2019_04_01::Models::Endpoints
        ManagementPolicySchema = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySchema
        VirtualNetworkRule = Azure::Storage::Mgmt::V2019_04_01::Models::VirtualNetworkRule
        NetworkRuleSet = Azure::Storage::Mgmt::V2019_04_01::Models::NetworkRuleSet
        StorageAccountListResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListResult
        StorageAccountCreateParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCreateParameters
        StorageAccountRegenerateKeyParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountRegenerateKeyParameters
        GeoReplicationStats = Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStats
        UsageName = Azure::Storage::Mgmt::V2019_04_01::Models::UsageName
        UsageListResult = Azure::Storage::Mgmt::V2019_04_01::Models::UsageListResult
        LeaseContainerResponse = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerResponse
        ServiceSpecification = Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSpecification
        LeaseContainerRequest = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerRequest
        SKUCapability = Azure::Storage::Mgmt::V2019_04_01::Models::SKUCapability
        Sku = Azure::Storage::Mgmt::V2019_04_01::Models::Sku
        ListContainerItems = Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItems
        EncryptionService = Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionService
        DeleteRetentionPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::DeleteRetentionPolicy
        StorageAccountKey = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountKey
        Resource = Azure::Storage::Mgmt::V2019_04_01::Models::Resource
        StorageAccountUpdateParameters = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountUpdateParameters
        UpdateHistoryProperty = Azure::Storage::Mgmt::V2019_04_01::Models::UpdateHistoryProperty
        Dimension = Azure::Storage::Mgmt::V2019_04_01::Models::Dimension
        ImmutabilityPolicyProperties = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyProperties
        CheckNameAvailabilityResult = Azure::Storage::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
        TagProperty = Azure::Storage::Mgmt::V2019_04_01::Models::TagProperty
        StorageAccountListKeysResult = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListKeysResult
        LegalHoldProperties = Azure::Storage::Mgmt::V2019_04_01::Models::LegalHoldProperties
        OperationListResult = Azure::Storage::Mgmt::V2019_04_01::Models::OperationListResult
        CorsRules = Azure::Storage::Mgmt::V2019_04_01::Models::CorsRules
        Usage = Azure::Storage::Mgmt::V2019_04_01::Models::Usage
        CorsRule = Azure::Storage::Mgmt::V2019_04_01::Models::CorsRule
        KeyVaultProperties = Azure::Storage::Mgmt::V2019_04_01::Models::KeyVaultProperties
        LegalHold = Azure::Storage::Mgmt::V2019_04_01::Models::LegalHold
        TrackedResource = Azure::Storage::Mgmt::V2019_04_01::Models::TrackedResource
        StorageAccount = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccount
        ManagementPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicy
        ProxyResource = Azure::Storage::Mgmt::V2019_04_01::Models::ProxyResource
        AzureEntityResource = Azure::Storage::Mgmt::V2019_04_01::Models::AzureEntityResource
        BlobContainer = Azure::Storage::Mgmt::V2019_04_01::Models::BlobContainer
        ImmutabilityPolicy = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicy
        ListContainerItem = Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItem
        BlobServiceProperties = Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceProperties
        ReasonCode = Azure::Storage::Mgmt::V2019_04_01::Models::ReasonCode
        SkuName = Azure::Storage::Mgmt::V2019_04_01::Models::SkuName
        SkuTier = Azure::Storage::Mgmt::V2019_04_01::Models::SkuTier
        Kind = Azure::Storage::Mgmt::V2019_04_01::Models::Kind
        Reason = Azure::Storage::Mgmt::V2019_04_01::Models::Reason
        KeySource = Azure::Storage::Mgmt::V2019_04_01::Models::KeySource
        Action = Azure::Storage::Mgmt::V2019_04_01::Models::Action
        State = Azure::Storage::Mgmt::V2019_04_01::Models::State
        Bypass = Azure::Storage::Mgmt::V2019_04_01::Models::Bypass
        DefaultAction = Azure::Storage::Mgmt::V2019_04_01::Models::DefaultAction
        AccessTier = Azure::Storage::Mgmt::V2019_04_01::Models::AccessTier
        GeoReplicationStatus = Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStatus
        ProvisioningState = Azure::Storage::Mgmt::V2019_04_01::Models::ProvisioningState
        AccountStatus = Azure::Storage::Mgmt::V2019_04_01::Models::AccountStatus
        KeyPermission = Azure::Storage::Mgmt::V2019_04_01::Models::KeyPermission
        UsageUnit = Azure::Storage::Mgmt::V2019_04_01::Models::UsageUnit
        Services = Azure::Storage::Mgmt::V2019_04_01::Models::Services
        SignedResourceTypes = Azure::Storage::Mgmt::V2019_04_01::Models::SignedResourceTypes
        Permissions = Azure::Storage::Mgmt::V2019_04_01::Models::Permissions
        HttpProtocol = Azure::Storage::Mgmt::V2019_04_01::Models::HttpProtocol
        SignedResource = Azure::Storage::Mgmt::V2019_04_01::Models::SignedResource
        PublicAccess = Azure::Storage::Mgmt::V2019_04_01::Models::PublicAccess
        LeaseStatus = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseStatus
        LeaseState = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseState
        LeaseDuration = Azure::Storage::Mgmt::V2019_04_01::Models::LeaseDuration
        ImmutabilityPolicyState = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyState
        ImmutabilityPolicyUpdateType = Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyUpdateType
        StorageAccountExpand = Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountExpand
      end

      class StorageManagementClass
        attr_reader :operations, :skus, :storage_accounts, :usages, :management_policies, :blob_services, :blob_containers, :configurable, :base_url, :options, :model_classes

        def initialize(configurable, base_url=nil, options=nil)
          @configurable, @base_url, @options = configurable, base_url, options

          @client_0 = Azure::Storage::Mgmt::V2019_04_01::StorageManagementClient.new(configurable.credentials, base_url, options)
          if(@client_0.respond_to?(:subscription_id))
            @client_0.subscription_id = configurable.subscription_id
          end
          add_telemetry(@client_0)
          @operations = @client_0.operations
          @skus = @client_0.skus
          @storage_accounts = @client_0.storage_accounts
          @usages = @client_0.usages
          @management_policies = @client_0.management_policies
          @blob_services = @client_0.blob_services
          @blob_containers = @client_0.blob_containers

          @model_classes = ModelClasses.new
        end

        def add_telemetry(client)
          profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/Storage/Mgmt"
          client.add_user_agent_information(profile_information)
        end

        def method_missing(method, *args)
          if @client_0.respond_to?method
            @client_0.send(method, *args)
          else
            super
          end
        end

        class ModelClasses
          def account_sas_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::AccountSasParameters
          end
          def operation_display
            Azure::Storage::Mgmt::V2019_04_01::Models::OperationDisplay
          end
          def list_account_sas_response
            Azure::Storage::Mgmt::V2019_04_01::Models::ListAccountSasResponse
          end
          def metric_specification
            Azure::Storage::Mgmt::V2019_04_01::Models::MetricSpecification
          end
          def service_sas_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSasParameters
          end
          def operation
            Azure::Storage::Mgmt::V2019_04_01::Models::Operation
          end
          def list_service_sas_response
            Azure::Storage::Mgmt::V2019_04_01::Models::ListServiceSasResponse
          end
          def storage_account_check_name_availability_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCheckNameAvailabilityParameters
          end
          def date_after_modification
            Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterModification
          end
          def restriction
            Azure::Storage::Mgmt::V2019_04_01::Models::Restriction
          end
          def management_policy_base_blob
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyBaseBlob
          end
          def storage_sku_list_result
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageSkuListResult
          end
          def date_after_creation
            Azure::Storage::Mgmt::V2019_04_01::Models::DateAfterCreation
          end
          def custom_domain
            Azure::Storage::Mgmt::V2019_04_01::Models::CustomDomain
          end
          def management_policy_snap_shot
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySnapShot
          end
          def encryption_services
            Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionServices
          end
          def management_policy_action
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyAction
          end
          def encryption
            Azure::Storage::Mgmt::V2019_04_01::Models::Encryption
          end
          def management_policy_filter
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyFilter
          end
          def iprule
            Azure::Storage::Mgmt::V2019_04_01::Models::IPRule
          end
          def management_policy_definition
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyDefinition
          end
          def identity
            Azure::Storage::Mgmt::V2019_04_01::Models::Identity
          end
          def management_policy_rule
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicyRule
          end
          def endpoints
            Azure::Storage::Mgmt::V2019_04_01::Models::Endpoints
          end
          def management_policy_schema
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicySchema
          end
          def virtual_network_rule
            Azure::Storage::Mgmt::V2019_04_01::Models::VirtualNetworkRule
          end
          def network_rule_set
            Azure::Storage::Mgmt::V2019_04_01::Models::NetworkRuleSet
          end
          def storage_account_list_result
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListResult
          end
          def storage_account_create_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountCreateParameters
          end
          def storage_account_regenerate_key_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountRegenerateKeyParameters
          end
          def geo_replication_stats
            Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStats
          end
          def usage_name
            Azure::Storage::Mgmt::V2019_04_01::Models::UsageName
          end
          def usage_list_result
            Azure::Storage::Mgmt::V2019_04_01::Models::UsageListResult
          end
          def lease_container_response
            Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerResponse
          end
          def service_specification
            Azure::Storage::Mgmt::V2019_04_01::Models::ServiceSpecification
          end
          def lease_container_request
            Azure::Storage::Mgmt::V2019_04_01::Models::LeaseContainerRequest
          end
          def skucapability
            Azure::Storage::Mgmt::V2019_04_01::Models::SKUCapability
          end
          def sku
            Azure::Storage::Mgmt::V2019_04_01::Models::Sku
          end
          def list_container_items
            Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItems
          end
          def encryption_service
            Azure::Storage::Mgmt::V2019_04_01::Models::EncryptionService
          end
          def delete_retention_policy
            Azure::Storage::Mgmt::V2019_04_01::Models::DeleteRetentionPolicy
          end
          def storage_account_key
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountKey
          end
          def resource
            Azure::Storage::Mgmt::V2019_04_01::Models::Resource
          end
          def storage_account_update_parameters
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountUpdateParameters
          end
          def update_history_property
            Azure::Storage::Mgmt::V2019_04_01::Models::UpdateHistoryProperty
          end
          def dimension
            Azure::Storage::Mgmt::V2019_04_01::Models::Dimension
          end
          def immutability_policy_properties
            Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyProperties
          end
          def check_name_availability_result
            Azure::Storage::Mgmt::V2019_04_01::Models::CheckNameAvailabilityResult
          end
          def tag_property
            Azure::Storage::Mgmt::V2019_04_01::Models::TagProperty
          end
          def storage_account_list_keys_result
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountListKeysResult
          end
          def legal_hold_properties
            Azure::Storage::Mgmt::V2019_04_01::Models::LegalHoldProperties
          end
          def operation_list_result
            Azure::Storage::Mgmt::V2019_04_01::Models::OperationListResult
          end
          def cors_rules
            Azure::Storage::Mgmt::V2019_04_01::Models::CorsRules
          end
          def usage
            Azure::Storage::Mgmt::V2019_04_01::Models::Usage
          end
          def cors_rule
            Azure::Storage::Mgmt::V2019_04_01::Models::CorsRule
          end
          def key_vault_properties
            Azure::Storage::Mgmt::V2019_04_01::Models::KeyVaultProperties
          end
          def legal_hold
            Azure::Storage::Mgmt::V2019_04_01::Models::LegalHold
          end
          def tracked_resource
            Azure::Storage::Mgmt::V2019_04_01::Models::TrackedResource
          end
          def storage_account
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccount
          end
          def management_policy
            Azure::Storage::Mgmt::V2019_04_01::Models::ManagementPolicy
          end
          def proxy_resource
            Azure::Storage::Mgmt::V2019_04_01::Models::ProxyResource
          end
          def azure_entity_resource
            Azure::Storage::Mgmt::V2019_04_01::Models::AzureEntityResource
          end
          def blob_container
            Azure::Storage::Mgmt::V2019_04_01::Models::BlobContainer
          end
          def immutability_policy
            Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicy
          end
          def list_container_item
            Azure::Storage::Mgmt::V2019_04_01::Models::ListContainerItem
          end
          def blob_service_properties
            Azure::Storage::Mgmt::V2019_04_01::Models::BlobServiceProperties
          end
          def reason_code
            Azure::Storage::Mgmt::V2019_04_01::Models::ReasonCode
          end
          def sku_name
            Azure::Storage::Mgmt::V2019_04_01::Models::SkuName
          end
          def sku_tier
            Azure::Storage::Mgmt::V2019_04_01::Models::SkuTier
          end
          def kind
            Azure::Storage::Mgmt::V2019_04_01::Models::Kind
          end
          def reason
            Azure::Storage::Mgmt::V2019_04_01::Models::Reason
          end
          def key_source
            Azure::Storage::Mgmt::V2019_04_01::Models::KeySource
          end
          def action
            Azure::Storage::Mgmt::V2019_04_01::Models::Action
          end
          def state
            Azure::Storage::Mgmt::V2019_04_01::Models::State
          end
          def bypass
            Azure::Storage::Mgmt::V2019_04_01::Models::Bypass
          end
          def default_action
            Azure::Storage::Mgmt::V2019_04_01::Models::DefaultAction
          end
          def access_tier
            Azure::Storage::Mgmt::V2019_04_01::Models::AccessTier
          end
          def geo_replication_status
            Azure::Storage::Mgmt::V2019_04_01::Models::GeoReplicationStatus
          end
          def provisioning_state
            Azure::Storage::Mgmt::V2019_04_01::Models::ProvisioningState
          end
          def account_status
            Azure::Storage::Mgmt::V2019_04_01::Models::AccountStatus
          end
          def key_permission
            Azure::Storage::Mgmt::V2019_04_01::Models::KeyPermission
          end
          def usage_unit
            Azure::Storage::Mgmt::V2019_04_01::Models::UsageUnit
          end
          def services
            Azure::Storage::Mgmt::V2019_04_01::Models::Services
          end
          def signed_resource_types
            Azure::Storage::Mgmt::V2019_04_01::Models::SignedResourceTypes
          end
          def permissions
            Azure::Storage::Mgmt::V2019_04_01::Models::Permissions
          end
          def http_protocol
            Azure::Storage::Mgmt::V2019_04_01::Models::HttpProtocol
          end
          def signed_resource
            Azure::Storage::Mgmt::V2019_04_01::Models::SignedResource
          end
          def public_access
            Azure::Storage::Mgmt::V2019_04_01::Models::PublicAccess
          end
          def lease_status
            Azure::Storage::Mgmt::V2019_04_01::Models::LeaseStatus
          end
          def lease_state
            Azure::Storage::Mgmt::V2019_04_01::Models::LeaseState
          end
          def lease_duration
            Azure::Storage::Mgmt::V2019_04_01::Models::LeaseDuration
          end
          def immutability_policy_state
            Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyState
          end
          def immutability_policy_update_type
            Azure::Storage::Mgmt::V2019_04_01::Models::ImmutabilityPolicyUpdateType
          end
          def storage_account_expand
            Azure::Storage::Mgmt::V2019_04_01::Models::StorageAccountExpand
          end
        end
      end
    end
  end
end
