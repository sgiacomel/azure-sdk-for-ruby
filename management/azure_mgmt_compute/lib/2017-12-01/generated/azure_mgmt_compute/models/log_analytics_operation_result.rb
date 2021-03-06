# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # LogAnalytics operation status response
    #
    class LogAnalyticsOperationResult < OperationStatusResponse

      include MsRestAzure

      # @return [LogAnalyticsOutput] LogAnalyticsOutput
      attr_accessor :properties


      #
      # Mapper for LogAnalyticsOperationResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'LogAnalyticsOperationResult',
          type: {
            name: 'Composite',
            class_name: 'LogAnalyticsOperationResult',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              status: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ApiError'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'LogAnalyticsOutput'
                }
              }
            }
          }
        }
      end
    end
  end
end
