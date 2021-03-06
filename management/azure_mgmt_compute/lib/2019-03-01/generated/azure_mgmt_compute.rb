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
require '2019-03-01/generated/azure_mgmt_compute/module_definition'
require 'ms_rest_azure'

module Azure::Compute::Mgmt::V2019_03_01
  autoload :Operations,                                         '2019-03-01/generated/azure_mgmt_compute/operations.rb'
  autoload :AvailabilitySets,                                   '2019-03-01/generated/azure_mgmt_compute/availability_sets.rb'
  autoload :ProximityPlacementGroups,                           '2019-03-01/generated/azure_mgmt_compute/proximity_placement_groups.rb'
  autoload :VirtualMachineExtensionImages,                      '2019-03-01/generated/azure_mgmt_compute/virtual_machine_extension_images.rb'
  autoload :VirtualMachineExtensions,                           '2019-03-01/generated/azure_mgmt_compute/virtual_machine_extensions.rb'
  autoload :VirtualMachineImages,                               '2019-03-01/generated/azure_mgmt_compute/virtual_machine_images.rb'
  autoload :UsageOperations,                                    '2019-03-01/generated/azure_mgmt_compute/usage_operations.rb'
  autoload :VirtualMachines,                                    '2019-03-01/generated/azure_mgmt_compute/virtual_machines.rb'
  autoload :VirtualMachineSizes,                                '2019-03-01/generated/azure_mgmt_compute/virtual_machine_sizes.rb'
  autoload :Images,                                             '2019-03-01/generated/azure_mgmt_compute/images.rb'
  autoload :VirtualMachineScaleSets,                            '2019-03-01/generated/azure_mgmt_compute/virtual_machine_scale_sets.rb'
  autoload :VirtualMachineScaleSetExtensions,                   '2019-03-01/generated/azure_mgmt_compute/virtual_machine_scale_set_extensions.rb'
  autoload :VirtualMachineScaleSetRollingUpgrades,              '2019-03-01/generated/azure_mgmt_compute/virtual_machine_scale_set_rolling_upgrades.rb'
  autoload :VirtualMachineScaleSetVMs,                          '2019-03-01/generated/azure_mgmt_compute/virtual_machine_scale_set_vms.rb'
  autoload :LogAnalytics,                                       '2019-03-01/generated/azure_mgmt_compute/log_analytics.rb'
  autoload :VirtualMachineRunCommands,                          '2019-03-01/generated/azure_mgmt_compute/virtual_machine_run_commands.rb'
  autoload :Galleries,                                          '2019-03-01/generated/azure_mgmt_compute/galleries.rb'
  autoload :GalleryImages,                                      '2019-03-01/generated/azure_mgmt_compute/gallery_images.rb'
  autoload :GalleryImageVersions,                               '2019-03-01/generated/azure_mgmt_compute/gallery_image_versions.rb'
  autoload :ComputeManagementClient,                            '2019-03-01/generated/azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_public_ipaddress_configuration_dns_settings.rb'
    autoload :ComputeOperationValue,                              '2019-03-01/generated/azure_mgmt_compute/models/compute_operation_value.rb'
    autoload :VirtualMachineScaleSetIpTag,                        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_ip_tag.rb'
    autoload :InstanceViewStatus,                                 '2019-03-01/generated/azure_mgmt_compute/models/instance_view_status.rb'
    autoload :VirtualMachineScaleSetPublicIPAddressConfiguration, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_public_ipaddress_configuration.rb'
    autoload :Sku,                                                '2019-03-01/generated/azure_mgmt_compute/models/sku.rb'
    autoload :VirtualMachineScaleSetUpdatePublicIPAddressConfiguration, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_public_ipaddress_configuration.rb'
    autoload :ImageStorageProfile,                                '2019-03-01/generated/azure_mgmt_compute/models/image_storage_profile.rb'
    autoload :Disallowed,                                         '2019-03-01/generated/azure_mgmt_compute/models/disallowed.rb'
    autoload :RecommendedMachineConfiguration,                    '2019-03-01/generated/azure_mgmt_compute/models/recommended_machine_configuration.rb'
    autoload :ProximityPlacementGroupListResult,                  '2019-03-01/generated/azure_mgmt_compute/models/proximity_placement_group_list_result.rb'
    autoload :ImageListResult,                                    '2019-03-01/generated/azure_mgmt_compute/models/image_list_result.rb'
    autoload :VirtualMachineSizeListResult,                       '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_size_list_result.rb'
    autoload :VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_identity_user_assigned_identities_value.rb'
    autoload :GalleryList,                                        '2019-03-01/generated/azure_mgmt_compute/models/gallery_list.rb'
    autoload :VirtualMachineScaleSetIdentity,                     '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_identity.rb'
    autoload :GalleryDiskImage,                                   '2019-03-01/generated/azure_mgmt_compute/models/gallery_disk_image.rb'
    autoload :VirtualMachineScaleSetOSProfile,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_osprofile.rb'
    autoload :VirtualMachineExtensionsListResult,                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extensions_list_result.rb'
    autoload :VirtualMachineScaleSetUpdateOSProfile,              '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_osprofile.rb'
    autoload :OSDiskImage,                                        '2019-03-01/generated/azure_mgmt_compute/models/osdisk_image.rb'
    autoload :VirtualMachineScaleSetManagedDiskParameters,        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_managed_disk_parameters.rb'
    autoload :AutomaticOSUpgradeProperties,                       '2019-03-01/generated/azure_mgmt_compute/models/automatic_osupgrade_properties.rb'
    autoload :VirtualMachineScaleSetOSDisk,                       '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_osdisk.rb'
    autoload :UsageName,                                          '2019-03-01/generated/azure_mgmt_compute/models/usage_name.rb'
    autoload :VirtualMachineScaleSetUpdateOSDisk,                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_osdisk.rb'
    autoload :ListUsagesResult,                                   '2019-03-01/generated/azure_mgmt_compute/models/list_usages_result.rb'
    autoload :VirtualMachineScaleSetDataDisk,                     '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_data_disk.rb'
    autoload :VirtualMachineCaptureParameters,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_capture_parameters.rb'
    autoload :VirtualMachineScaleSetStorageProfile,               '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_storage_profile.rb'
    autoload :Plan,                                               '2019-03-01/generated/azure_mgmt_compute/models/plan.rb'
    autoload :VirtualMachineScaleSetUpdateStorageProfile,         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_storage_profile.rb'
    autoload :TargetRegion,                                       '2019-03-01/generated/azure_mgmt_compute/models/target_region.rb'
    autoload :ApiEntityReference,                                 '2019-03-01/generated/azure_mgmt_compute/models/api_entity_reference.rb'
    autoload :KeyVaultKeyReference,                               '2019-03-01/generated/azure_mgmt_compute/models/key_vault_key_reference.rb'
    autoload :ComputeOperationListResult,                         '2019-03-01/generated/azure_mgmt_compute/models/compute_operation_list_result.rb'
    autoload :VirtualHardDisk,                                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_hard_disk.rb'
    autoload :SubResource,                                        '2019-03-01/generated/azure_mgmt_compute/models/sub_resource.rb'
    autoload :ReplicationStatus,                                  '2019-03-01/generated/azure_mgmt_compute/models/replication_status.rb'
    autoload :OSDisk,                                             '2019-03-01/generated/azure_mgmt_compute/models/osdisk.rb'
    autoload :LogAnalyticsInputBase,                              '2019-03-01/generated/azure_mgmt_compute/models/log_analytics_input_base.rb'
    autoload :StorageProfile,                                     '2019-03-01/generated/azure_mgmt_compute/models/storage_profile.rb'
    autoload :ResourceRange,                                      '2019-03-01/generated/azure_mgmt_compute/models/resource_range.rb'
    autoload :AdditionalUnattendContent,                          '2019-03-01/generated/azure_mgmt_compute/models/additional_unattend_content.rb'
    autoload :GalleryImageIdentifier,                             '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_identifier.rb'
    autoload :WinRMConfiguration,                                 '2019-03-01/generated/azure_mgmt_compute/models/win_rmconfiguration.rb'
    autoload :GalleryIdentifier,                                  '2019-03-01/generated/azure_mgmt_compute/models/gallery_identifier.rb'
    autoload :SshPublicKey,                                       '2019-03-01/generated/azure_mgmt_compute/models/ssh_public_key.rb'
    autoload :VirtualMachineScaleSetNetworkConfigurationDnsSettings, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_configuration_dns_settings.rb'
    autoload :LinuxConfiguration,                                 '2019-03-01/generated/azure_mgmt_compute/models/linux_configuration.rb'
    autoload :RunCommandResult,                                   '2019-03-01/generated/azure_mgmt_compute/models/run_command_result.rb'
    autoload :VaultSecretGroup,                                   '2019-03-01/generated/azure_mgmt_compute/models/vault_secret_group.rb'
    autoload :RunCommandListResult,                               '2019-03-01/generated/azure_mgmt_compute/models/run_command_list_result.rb'
    autoload :RegionalReplicationStatus,                          '2019-03-01/generated/azure_mgmt_compute/models/regional_replication_status.rb'
    autoload :VirtualMachineScaleSetNetworkProfile,               '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_profile.rb'
    autoload :BootDiagnostics,                                    '2019-03-01/generated/azure_mgmt_compute/models/boot_diagnostics.rb'
    autoload :VirtualMachineScaleSetUpdateNetworkProfile,         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_network_profile.rb'
    autoload :VirtualMachineExtensionHandlerInstanceView,         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extension_handler_instance_view.rb'
    autoload :RunCommandDocumentBase,                             '2019-03-01/generated/azure_mgmt_compute/models/run_command_document_base.rb'
    autoload :DiskInstanceView,                                   '2019-03-01/generated/azure_mgmt_compute/models/disk_instance_view.rb'
    autoload :VirtualMachineScaleSetExtensionListResult,          '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension_list_result.rb'
    autoload :VirtualMachineIdentityUserAssignedIdentitiesValue,  '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_identity_user_assigned_identities_value.rb'
    autoload :VirtualMachineScaleSetExtensionProfile,             '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension_profile.rb'
    autoload :MaintenanceRedeployStatus,                          '2019-03-01/generated/azure_mgmt_compute/models/maintenance_redeploy_status.rb'
    autoload :VirtualMachineScaleSetVMProfile,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmprofile.rb'
    autoload :GalleryImageVersionStorageProfile,                  '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_version_storage_profile.rb'
    autoload :VirtualMachineScaleSetUpdateVMProfile,              '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_vmprofile.rb'
    autoload :VirtualMachineListResult,                           '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_list_result.rb'
    autoload :RunCommandParameterDefinition,                      '2019-03-01/generated/azure_mgmt_compute/models/run_command_parameter_definition.rb'
    autoload :RollingUpgradePolicy,                               '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_policy.rb'
    autoload :RunCommandInput,                                    '2019-03-01/generated/azure_mgmt_compute/models/run_command_input.rb'
    autoload :ImageOSDisk,                                        '2019-03-01/generated/azure_mgmt_compute/models/image_osdisk.rb'
    autoload :RunCommandInputParameter,                           '2019-03-01/generated/azure_mgmt_compute/models/run_command_input_parameter.rb'
    autoload :AvailabilitySetListResult,                          '2019-03-01/generated/azure_mgmt_compute/models/availability_set_list_result.rb'
    autoload :VMScaleSetConvertToSinglePlacementGroupInput,       '2019-03-01/generated/azure_mgmt_compute/models/vmscale_set_convert_to_single_placement_group_input.rb'
    autoload :VirtualMachineSize,                                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_size.rb'
    autoload :VirtualMachineScaleSetVMInstanceIDs,                '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_ids.rb'
    autoload :VirtualMachineExtensionInstanceView,                '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extension_instance_view.rb'
    autoload :VirtualMachineScaleSetVMInstanceRequiredIDs,        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_required_ids.rb'
    autoload :PurchasePlan,                                       '2019-03-01/generated/azure_mgmt_compute/models/purchase_plan.rb'
    autoload :VirtualMachineStatusCodeCount,                      '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_status_code_count.rb'
    autoload :GalleryArtifactSource,                              '2019-03-01/generated/azure_mgmt_compute/models/gallery_artifact_source.rb'
    autoload :VirtualMachineScaleSetInstanceViewStatusesSummary,  '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view_statuses_summary.rb'
    autoload :VirtualMachineReimageParameters,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_reimage_parameters.rb'
    autoload :VirtualMachineScaleSetVMExtensionsSummary,          '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmextensions_summary.rb'
    autoload :HardwareProfile,                                    '2019-03-01/generated/azure_mgmt_compute/models/hardware_profile.rb'
    autoload :VirtualMachineScaleSetInstanceView,                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view.rb'
    autoload :DiskEncryptionSettings,                             '2019-03-01/generated/azure_mgmt_compute/models/disk_encryption_settings.rb'
    autoload :VirtualMachineScaleSetListResult,                   '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_result.rb'
    autoload :DataDisk,                                           '2019-03-01/generated/azure_mgmt_compute/models/data_disk.rb'
    autoload :VirtualMachineScaleSetListWithLinkResult,           '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_with_link_result.rb'
    autoload :WinRMListener,                                      '2019-03-01/generated/azure_mgmt_compute/models/win_rmlistener.rb'
    autoload :VirtualMachineScaleSetSkuCapacity,                  '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_capacity.rb'
    autoload :SshConfiguration,                                   '2019-03-01/generated/azure_mgmt_compute/models/ssh_configuration.rb'
    autoload :VirtualMachineScaleSetSku,                          '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku.rb'
    autoload :OSProfile,                                          '2019-03-01/generated/azure_mgmt_compute/models/osprofile.rb'
    autoload :VirtualMachineScaleSetListSkusResult,               '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_skus_result.rb'
    autoload :DiagnosticsProfile,                                 '2019-03-01/generated/azure_mgmt_compute/models/diagnostics_profile.rb'
    autoload :ApiErrorBase,                                       '2019-03-01/generated/azure_mgmt_compute/models/api_error_base.rb'
    autoload :BootDiagnosticsInstanceView,                        '2019-03-01/generated/azure_mgmt_compute/models/boot_diagnostics_instance_view.rb'
    autoload :InnerError,                                         '2019-03-01/generated/azure_mgmt_compute/models/inner_error.rb'
    autoload :VirtualMachineInstanceView,                         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_instance_view.rb'
    autoload :ApiError,                                           '2019-03-01/generated/azure_mgmt_compute/models/api_error.rb'
    autoload :AutomaticOSUpgradePolicy,                           '2019-03-01/generated/azure_mgmt_compute/models/automatic_osupgrade_policy.rb'
    autoload :RollbackStatusInfo,                                 '2019-03-01/generated/azure_mgmt_compute/models/rollback_status_info.rb'
    autoload :ImageDataDisk,                                      '2019-03-01/generated/azure_mgmt_compute/models/image_data_disk.rb'
    autoload :UpgradeOperationHistoryStatus,                      '2019-03-01/generated/azure_mgmt_compute/models/upgrade_operation_history_status.rb'
    autoload :GalleryImageList,                                   '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_list.rb'
    autoload :RollingUpgradeProgressInfo,                         '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_progress_info.rb'
    autoload :DataDiskImage,                                      '2019-03-01/generated/azure_mgmt_compute/models/data_disk_image.rb'
    autoload :UpgradeOperationHistoricalStatusInfoProperties,     '2019-03-01/generated/azure_mgmt_compute/models/upgrade_operation_historical_status_info_properties.rb'
    autoload :ManagedArtifact,                                    '2019-03-01/generated/azure_mgmt_compute/models/managed_artifact.rb'
    autoload :UpgradeOperationHistoricalStatusInfo,               '2019-03-01/generated/azure_mgmt_compute/models/upgrade_operation_historical_status_info.rb'
    autoload :DiffDiskSettings,                                   '2019-03-01/generated/azure_mgmt_compute/models/diff_disk_settings.rb'
    autoload :VirtualMachineScaleSetListOSUpgradeHistory,         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_osupgrade_history.rb'
    autoload :WindowsConfiguration,                               '2019-03-01/generated/azure_mgmt_compute/models/windows_configuration.rb'
    autoload :VirtualMachineHealthStatus,                         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_health_status.rb'
    autoload :NetworkProfile,                                     '2019-03-01/generated/azure_mgmt_compute/models/network_profile.rb'
    autoload :VirtualMachineScaleSetVMInstanceView,               '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_view.rb'
    autoload :VirtualMachineIdentity,                             '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_identity.rb'
    autoload :VirtualMachineScaleSetVMNetworkProfileConfiguration, '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmnetwork_profile_configuration.rb'
    autoload :UpgradePolicy,                                      '2019-03-01/generated/azure_mgmt_compute/models/upgrade_policy.rb'
    autoload :VirtualMachineScaleSetVMProtectionPolicy,           '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmprotection_policy.rb'
    autoload :GalleryArtifactPublishingProfileBase,               '2019-03-01/generated/azure_mgmt_compute/models/gallery_artifact_publishing_profile_base.rb'
    autoload :LogAnalyticsOperationResult,                        '2019-03-01/generated/azure_mgmt_compute/models/log_analytics_operation_result.rb'
    autoload :KeyVaultSecretReference,                            '2019-03-01/generated/azure_mgmt_compute/models/key_vault_secret_reference.rb'
    autoload :VirtualMachineScaleSetVMListResult,                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmlist_result.rb'
    autoload :VaultCertificate,                                   '2019-03-01/generated/azure_mgmt_compute/models/vault_certificate.rb'
    autoload :RollingUpgradeRunningStatus,                        '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_running_status.rb'
    autoload :ImagePurchasePlan,                                  '2019-03-01/generated/azure_mgmt_compute/models/image_purchase_plan.rb'
    autoload :LogAnalyticsOutput,                                 '2019-03-01/generated/azure_mgmt_compute/models/log_analytics_output.rb'
    autoload :Usage,                                              '2019-03-01/generated/azure_mgmt_compute/models/usage.rb'
    autoload :Resource,                                           '2019-03-01/generated/azure_mgmt_compute/models/resource.rb'
    autoload :VirtualMachineAgentInstanceView,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_agent_instance_view.rb'
    autoload :UpdateResource,                                     '2019-03-01/generated/azure_mgmt_compute/models/update_resource.rb'
    autoload :AdditionalCapabilities,                             '2019-03-01/generated/azure_mgmt_compute/models/additional_capabilities.rb'
    autoload :SubResourceReadOnly,                                '2019-03-01/generated/azure_mgmt_compute/models/sub_resource_read_only.rb'
    autoload :GalleryImageVersionList,                            '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_version_list.rb'
    autoload :RecoveryWalkResponse,                               '2019-03-01/generated/azure_mgmt_compute/models/recovery_walk_response.rb'
    autoload :AvailabilitySet,                                    '2019-03-01/generated/azure_mgmt_compute/models/availability_set.rb'
    autoload :AvailabilitySetUpdate,                              '2019-03-01/generated/azure_mgmt_compute/models/availability_set_update.rb'
    autoload :ProximityPlacementGroup,                            '2019-03-01/generated/azure_mgmt_compute/models/proximity_placement_group.rb'
    autoload :ProximityPlacementGroupUpdate,                      '2019-03-01/generated/azure_mgmt_compute/models/proximity_placement_group_update.rb'
    autoload :VirtualMachineExtensionImage,                       '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extension_image.rb'
    autoload :VirtualMachineImageResource,                        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_image_resource.rb'
    autoload :VirtualMachineExtension,                            '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extension.rb'
    autoload :VirtualMachineExtensionUpdate,                      '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_extension_update.rb'
    autoload :VirtualMachineImage,                                '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_image.rb'
    autoload :VirtualMachineCaptureResult,                        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_capture_result.rb'
    autoload :ImageReference,                                     '2019-03-01/generated/azure_mgmt_compute/models/image_reference.rb'
    autoload :ManagedDiskParameters,                              '2019-03-01/generated/azure_mgmt_compute/models/managed_disk_parameters.rb'
    autoload :NetworkInterfaceReference,                          '2019-03-01/generated/azure_mgmt_compute/models/network_interface_reference.rb'
    autoload :VirtualMachine,                                     '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine.rb'
    autoload :VirtualMachineUpdate,                               '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_update.rb'
    autoload :Image,                                              '2019-03-01/generated/azure_mgmt_compute/models/image.rb'
    autoload :ImageUpdate,                                        '2019-03-01/generated/azure_mgmt_compute/models/image_update.rb'
    autoload :VirtualMachineScaleSetIPConfiguration,              '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_ipconfiguration.rb'
    autoload :VirtualMachineScaleSetUpdateIPConfiguration,        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_ipconfiguration.rb'
    autoload :VirtualMachineScaleSetNetworkConfiguration,         '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_configuration.rb'
    autoload :VirtualMachineScaleSetUpdateNetworkConfiguration,   '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_network_configuration.rb'
    autoload :VirtualMachineScaleSetExtension,                    '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension.rb'
    autoload :VirtualMachineScaleSet,                             '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set.rb'
    autoload :VirtualMachineScaleSetVMReimageParameters,          '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmreimage_parameters.rb'
    autoload :VirtualMachineScaleSetReimageParameters,            '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_reimage_parameters.rb'
    autoload :VirtualMachineScaleSetUpdate,                       '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update.rb'
    autoload :VirtualMachineScaleSetVM,                           '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vm.rb'
    autoload :RollingUpgradeStatusInfo,                           '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_status_info.rb'
    autoload :RequestRateByIntervalInput,                         '2019-03-01/generated/azure_mgmt_compute/models/request_rate_by_interval_input.rb'
    autoload :ThrottledRequestsInput,                             '2019-03-01/generated/azure_mgmt_compute/models/throttled_requests_input.rb'
    autoload :RunCommandDocument,                                 '2019-03-01/generated/azure_mgmt_compute/models/run_command_document.rb'
    autoload :Gallery,                                            '2019-03-01/generated/azure_mgmt_compute/models/gallery.rb'
    autoload :GalleryImage,                                       '2019-03-01/generated/azure_mgmt_compute/models/gallery_image.rb'
    autoload :GalleryImageVersionPublishingProfile,               '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_version_publishing_profile.rb'
    autoload :GalleryOSDiskImage,                                 '2019-03-01/generated/azure_mgmt_compute/models/gallery_osdisk_image.rb'
    autoload :GalleryDataDiskImage,                               '2019-03-01/generated/azure_mgmt_compute/models/gallery_data_disk_image.rb'
    autoload :GalleryImageVersion,                                '2019-03-01/generated/azure_mgmt_compute/models/gallery_image_version.rb'
    autoload :HyperVGenerationTypes,                              '2019-03-01/generated/azure_mgmt_compute/models/hyper_vgeneration_types.rb'
    autoload :StatusLevelTypes,                                   '2019-03-01/generated/azure_mgmt_compute/models/status_level_types.rb'
    autoload :AvailabilitySetSkuTypes,                            '2019-03-01/generated/azure_mgmt_compute/models/availability_set_sku_types.rb'
    autoload :ProximityPlacementGroupType,                        '2019-03-01/generated/azure_mgmt_compute/models/proximity_placement_group_type.rb'
    autoload :OperatingSystemTypes,                               '2019-03-01/generated/azure_mgmt_compute/models/operating_system_types.rb'
    autoload :VirtualMachineSizeTypes,                            '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_size_types.rb'
    autoload :CachingTypes,                                       '2019-03-01/generated/azure_mgmt_compute/models/caching_types.rb'
    autoload :DiskCreateOptionTypes,                              '2019-03-01/generated/azure_mgmt_compute/models/disk_create_option_types.rb'
    autoload :StorageAccountTypes,                                '2019-03-01/generated/azure_mgmt_compute/models/storage_account_types.rb'
    autoload :DiffDiskOptions,                                    '2019-03-01/generated/azure_mgmt_compute/models/diff_disk_options.rb'
    autoload :PassNames,                                          '2019-03-01/generated/azure_mgmt_compute/models/pass_names.rb'
    autoload :ComponentNames,                                     '2019-03-01/generated/azure_mgmt_compute/models/component_names.rb'
    autoload :SettingNames,                                       '2019-03-01/generated/azure_mgmt_compute/models/setting_names.rb'
    autoload :ProtocolTypes,                                      '2019-03-01/generated/azure_mgmt_compute/models/protocol_types.rb'
    autoload :ResourceIdentityType,                               '2019-03-01/generated/azure_mgmt_compute/models/resource_identity_type.rb'
    autoload :MaintenanceOperationResultCodeTypes,                '2019-03-01/generated/azure_mgmt_compute/models/maintenance_operation_result_code_types.rb'
    autoload :UpgradeMode,                                        '2019-03-01/generated/azure_mgmt_compute/models/upgrade_mode.rb'
    autoload :OperatingSystemStateTypes,                          '2019-03-01/generated/azure_mgmt_compute/models/operating_system_state_types.rb'
    autoload :IPVersion,                                          '2019-03-01/generated/azure_mgmt_compute/models/ipversion.rb'
    autoload :VirtualMachinePriorityTypes,                        '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_priority_types.rb'
    autoload :VirtualMachineEvictionPolicyTypes,                  '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_eviction_policy_types.rb'
    autoload :VirtualMachineScaleSetSkuScaleType,                 '2019-03-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_scale_type.rb'
    autoload :UpgradeState,                                       '2019-03-01/generated/azure_mgmt_compute/models/upgrade_state.rb'
    autoload :UpgradeOperationInvoker,                            '2019-03-01/generated/azure_mgmt_compute/models/upgrade_operation_invoker.rb'
    autoload :RollingUpgradeStatusCode,                           '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_status_code.rb'
    autoload :RollingUpgradeActionType,                           '2019-03-01/generated/azure_mgmt_compute/models/rolling_upgrade_action_type.rb'
    autoload :IntervalInMins,                                     '2019-03-01/generated/azure_mgmt_compute/models/interval_in_mins.rb'
    autoload :StorageAccountType,                                 '2019-03-01/generated/azure_mgmt_compute/models/storage_account_type.rb'
    autoload :AggregatedReplicationState,                         '2019-03-01/generated/azure_mgmt_compute/models/aggregated_replication_state.rb'
    autoload :ReplicationState,                                   '2019-03-01/generated/azure_mgmt_compute/models/replication_state.rb'
    autoload :HostCaching,                                        '2019-03-01/generated/azure_mgmt_compute/models/host_caching.rb'
    autoload :InstanceViewTypes,                                  '2019-03-01/generated/azure_mgmt_compute/models/instance_view_types.rb'
    autoload :ReplicationStatusTypes,                             '2019-03-01/generated/azure_mgmt_compute/models/replication_status_types.rb'
  end
end
