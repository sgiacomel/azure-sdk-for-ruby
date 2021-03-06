# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_hdinsight'

module Azure::Hdinsight::Profiles::Latest
  module Mgmt
    Clusters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Clusters
    Applications = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Applications
    Locations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Locations
    Configurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Configurations
    Extensions = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Extensions
    ScriptActions = Azure::Hdinsight::Mgmt::V2018_06_01_preview::ScriptActions
    ScriptExecutionHistory = Azure::Hdinsight::Mgmt::V2018_06_01_preview::ScriptExecutionHistory
    Operations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Operations

    module Models
      ClusterListPersistedScriptActionsResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
      ScriptActionExecutionSummary = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
      SecurityProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
      VirtualNetworkProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
      ClusterListRuntimeScriptActionDetailResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
      SshPublicKey = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
      ClusterListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
      LinuxOperatingSystemProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
      ClusterResizeParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
      ScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
      ClusterDiskEncryptionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
      ComputeProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
      UpdateGatewaySettingsParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
      StorageProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
      GatewaySettings = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
      ClusterCreateProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
      OperationResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
      ClusterIdentity = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
      Resource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
      ClusterPatchParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
      OperationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
      Errors = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
      Operation = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
      ClusterGetProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
      ErrorResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
      RuntimeScriptAction = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
      ApplicationGetHttpsEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
      ClusterDefinition = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
      ApplicationGetEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
      DataDisksGroups = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
      ApplicationProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
      OsProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
      OperationDisplay = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
      StorageAccount = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
      ApplicationListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
      ClusterIdentityUserAssignedIdentitiesValue = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
      LocalizedName = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
      QuotaInfo = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
      Usage = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
      ScriptActionsList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
      ExecuteScriptActionParameters = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
      UsagesListResult = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
      SshProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
      ClusterConfigurations = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
      DiskEncryptionProperties = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
      Extension = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
      ConnectivityEndpoint = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
      ClusterMonitoringResponse = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
      Role = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
      ClusterMonitoringRequest = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
      HardwareProfile = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
      ScriptActionExecutionHistoryList = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
      ClusterCreateParametersExtended = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
      ScriptActionPersistedGetResponseSpec = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
      Cluster = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
      RuntimeScriptActionDetail = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
      TrackedResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
      ProxyResource = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ProxyResource
      Application = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Application
      DirectoryType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DirectoryType
      OSType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OSType
      Tier = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Tier
      JsonWebKeyEncryptionAlgorithm = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::JsonWebKeyEncryptionAlgorithm
      ResourceIdentityType = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceIdentityType
      HDInsightClusterProvisioningState = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HDInsightClusterProvisioningState
      AsyncOperationState = Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AsyncOperationState
    end

    #
    # HdinsightManagementClass
    #
    class HdinsightManagementClass
      attr_reader :clusters, :applications, :locations, :configurations, :extensions, :script_actions, :script_execution_history, :operations, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_default_options
        else
          @options = options
        end

        reset!(options)

        @configurable = self
        @base_url = options[:base_url].nil? ? nil:options[:base_url]
        @options = options[:options].nil? ? nil:options[:options]

        @client_0 = Azure::Hdinsight::Mgmt::V2018_06_01_preview::HDInsightManagementClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @clusters = @client_0.clusters
        @applications = @client_0.applications
        @locations = @client_0.locations
        @configurations = @client_0.configurations
        @extensions = @client_0.extensions
        @script_actions = @client_0.script_actions
        @script_execution_history = @client_0.script_execution_history
        @operations = @client_0.operations

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = 'Profiles/Latest/Hdinsight/Mgmt'
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

    end

    class ModelClasses
      def cluster_list_persisted_script_actions_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListPersistedScriptActionsResult
      end
      def script_action_execution_summary
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionSummary
      end
      def security_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SecurityProfile
      end
      def virtual_network_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::VirtualNetworkProfile
      end
      def cluster_list_runtime_script_action_detail_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListRuntimeScriptActionDetailResult
      end
      def ssh_public_key
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshPublicKey
      end
      def cluster_list_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterListResult
      end
      def linux_operating_system_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LinuxOperatingSystemProfile
      end
      def cluster_resize_parameters
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterResizeParameters
      end
      def script_action
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptAction
      end
      def cluster_disk_encryption_parameters
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDiskEncryptionParameters
      end
      def compute_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ComputeProfile
      end
      def update_gateway_settings_parameters
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UpdateGatewaySettingsParameters
      end
      def storage_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageProfile
      end
      def gateway_settings
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::GatewaySettings
      end
      def cluster_create_properties
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateProperties
      end
      def operation_resource
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationResource
      end
      def cluster_identity
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentity
      end
      def resource
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Resource
      end
      def cluster_patch_parameters
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterPatchParameters
      end
      def operation_list_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationListResult
      end
      def errors
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Errors
      end
      def operation
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Operation
      end
      def cluster_get_properties
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterGetProperties
      end
      def error_response
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ErrorResponse
      end
      def runtime_script_action
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptAction
      end
      def application_get_https_endpoint
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetHttpsEndpoint
      end
      def cluster_definition
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterDefinition
      end
      def application_get_endpoint
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationGetEndpoint
      end
      def data_disks_groups
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DataDisksGroups
      end
      def application_properties
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationProperties
      end
      def os_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OsProfile
      end
      def operation_display
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OperationDisplay
      end
      def storage_account
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::StorageAccount
      end
      def application_list_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ApplicationListResult
      end
      def cluster_identity_user_assigned_identities_value
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterIdentityUserAssignedIdentitiesValue
      end
      def localized_name
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::LocalizedName
      end
      def quota_info
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::QuotaInfo
      end
      def usage
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Usage
      end
      def script_actions_list
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionsList
      end
      def execute_script_action_parameters
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ExecuteScriptActionParameters
      end
      def usages_list_result
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::UsagesListResult
      end
      def ssh_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::SshProfile
      end
      def cluster_configurations
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterConfigurations
      end
      def disk_encryption_properties
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DiskEncryptionProperties
      end
      def extension
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Extension
      end
      def connectivity_endpoint
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ConnectivityEndpoint
      end
      def cluster_monitoring_response
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringResponse
      end
      def role
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Role
      end
      def cluster_monitoring_request
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterMonitoringRequest
      end
      def hardware_profile
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HardwareProfile
      end
      def script_action_execution_history_list
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionExecutionHistoryList
      end
      def cluster_create_parameters_extended
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ClusterCreateParametersExtended
      end
      def script_action_persisted_get_response_spec
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ScriptActionPersistedGetResponseSpec
      end
      def cluster
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Cluster
      end
      def runtime_script_action_detail
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::RuntimeScriptActionDetail
      end
      def tracked_resource
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::TrackedResource
      end
      def proxy_resource
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ProxyResource
      end
      def application
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Application
      end
      def directory_type
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::DirectoryType
      end
      def ostype
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::OSType
      end
      def tier
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::Tier
      end
      def json_web_key_encryption_algorithm
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::JsonWebKeyEncryptionAlgorithm
      end
      def resource_identity_type
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::ResourceIdentityType
      end
      def hdinsight_cluster_provisioning_state
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::HDInsightClusterProvisioningState
      end
      def async_operation_state
        Azure::Hdinsight::Mgmt::V2018_06_01_preview::Models::AsyncOperationState
      end
    end
  end
end
