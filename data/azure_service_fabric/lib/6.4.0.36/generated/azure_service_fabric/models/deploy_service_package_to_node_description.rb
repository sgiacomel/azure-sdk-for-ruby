# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Defines description for downloading packages associated with a service
    # manifest to image cache on a Service Fabric node.
    #
    class DeployServicePackageToNodeDescription

      include MsRestAzure

      # @return [String] The name of service manifest whose packages need to be
      # downloaded.
      attr_accessor :service_manifest_name

      # @return [String] The application type name as defined in the
      # application manifest.
      attr_accessor :application_type_name

      # @return [String] The version of the application type as defined in the
      # application manifest.
      attr_accessor :application_type_version

      # @return [String] The name of a Service Fabric node.
      attr_accessor :node_name

      # @return [Array<PackageSharingPolicyInfo>] List of package sharing
      # policy information.
      attr_accessor :package_sharing_policy


      #
      # Mapper for DeployServicePackageToNodeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployServicePackageToNodeDescription',
          type: {
            name: 'Composite',
            class_name: 'DeployServicePackageToNodeDescription',
            model_properties: {
              service_manifest_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceManifestName',
                type: {
                  name: 'String'
                }
              },
              application_type_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeName',
                type: {
                  name: 'String'
                }
              },
              application_type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              package_sharing_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PackageSharingPolicy',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PackageSharingPolicyInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PackageSharingPolicyInfo'
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
