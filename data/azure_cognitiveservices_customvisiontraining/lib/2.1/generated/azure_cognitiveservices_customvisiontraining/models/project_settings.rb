# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Customvisiontraining::V2_1
  module Models
    #
    # Represents settings associated with a project
    #
    class ProjectSettings

      include MsRestAzure

      # @return Gets or sets the id of the Domain to use with this project
      attr_accessor :domain_id

      # @return [Classifier] Gets or sets the classification type of the
      # project. Possible values include: 'Multiclass', 'Multilabel'
      attr_accessor :classification_type


      #
      # Mapper for ProjectSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProjectSettings',
          type: {
            name: 'Composite',
            class_name: 'ProjectSettings',
            model_properties: {
              domain_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'domainId',
                type: {
                  name: 'String'
                }
              },
              classification_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'classificationType',
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