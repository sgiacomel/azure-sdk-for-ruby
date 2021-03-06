# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Describes a partitioning scheme where an integer range is allocated
    # evenly across a number of partitions.
    #
    class UniformInt64RangePartitionSchemeDescription < PartitionSchemeDescription

      include MsRestAzure


      def initialize
        @PartitionScheme = "UniformInt64Range"
      end

      attr_accessor :PartitionScheme

      # @return [Integer] The number of partitions.
      attr_accessor :count

      # @return [String] String indicating the lower bound of the partition key
      # range that
      # should be split between the partition ‘Count’
      #
      attr_accessor :low_key

      # @return [String] String indicating the upper bound of the partition key
      # range that
      # should be split between the partition ‘Count’
      #
      attr_accessor :high_key


      #
      # Mapper for UniformInt64RangePartitionSchemeDescription class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UniformInt64Range',
          type: {
            name: 'Composite',
            class_name: 'UniformInt64RangePartitionSchemeDescription',
            model_properties: {
              PartitionScheme: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionScheme',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Count',
                type: {
                  name: 'Number'
                }
              },
              low_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'LowKey',
                type: {
                  name: 'String'
                }
              },
              high_key: {
                client_side_validation: true,
                required: true,
                serialized_name: 'HighKey',
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
