# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents the response to a list server metrics request.
    #
    class ServerUsageListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<ServerUsage>] The list of server metrics for the server.
      attr_accessor :value


      #
      # Mapper for ServerUsageListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ServerUsageListResult',
          type: {
            name: 'Composite',
            class_name: 'ServerUsageListResult',
            model_properties: {
              value: {
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ServerUsageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServerUsage'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end