# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2017_10_01_preview
  module Models
    #
    # The Elastic Pool performance level capability.
    #
    class ElasticPoolPerformanceLevelCapability

      include MsRestAzure

      # @return [PerformanceLevelCapability] The performance level for the
      # pool.
      attr_accessor :performance_level

      # @return [Sku] The sku.
      attr_accessor :sku

      # @return [Array<LicenseTypeCapability>] List of supported license types.
      attr_accessor :supported_license_types

      # @return [Integer] The maximum number of databases supported.
      attr_accessor :max_database_count

      # @return [MaxSizeCapability] The included (free) max size for this
      # performance level.
      attr_accessor :included_max_size

      # @return [Array<MaxSizeRangeCapability>] The list of supported max
      # sizes.
      attr_accessor :supported_max_sizes

      # @return [Array<MaxSizeRangeCapability>] The list of supported per
      # database max sizes.
      attr_accessor :supported_per_database_max_sizes

      # @return [Array<ElasticPoolPerDatabaseMaxPerformanceLevelCapability>]
      # The list of supported per database max performance levels.
      attr_accessor :supported_per_database_max_performance_levels

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [String] The reason for the capability not being available.
      attr_accessor :reason


      #
      # Mapper for ElasticPoolPerformanceLevelCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ElasticPoolPerformanceLevelCapability',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolPerformanceLevelCapability',
            model_properties: {
              performance_level: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'performanceLevel',
                type: {
                  name: 'Composite',
                  class_name: 'PerformanceLevelCapability'
                }
              },
              sku: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              supported_license_types: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedLicenseTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LicenseTypeCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LicenseTypeCapability'
                      }
                  }
                }
              },
              max_database_count: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'maxDatabaseCount',
                type: {
                  name: 'Number'
                }
              },
              included_max_size: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'includedMaxSize',
                type: {
                  name: 'Composite',
                  class_name: 'MaxSizeCapability'
                }
              },
              supported_max_sizes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedMaxSizes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MaxSizeRangeCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MaxSizeRangeCapability'
                      }
                  }
                }
              },
              supported_per_database_max_sizes: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedPerDatabaseMaxSizes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MaxSizeRangeCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MaxSizeRangeCapability'
                      }
                  }
                }
              },
              supported_per_database_max_performance_levels: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'supportedPerDatabaseMaxPerformanceLevels',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ElasticPoolPerDatabaseMaxPerformanceLevelCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolPerDatabaseMaxPerformanceLevelCapability'
                      }
                  }
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
