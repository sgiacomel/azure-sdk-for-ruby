# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2018_01_10
  module Models
    #
    # Task of the Job.
    #
    class ASRTask

      include MsRestAzure

      # @return [String] The Id.
      attr_accessor :task_id

      # @return [String] The unique Task name.
      attr_accessor :name

      # @return [DateTime] The start time.
      attr_accessor :start_time

      # @return [DateTime] The end time.
      attr_accessor :end_time

      # @return [Array<String>] The state/actions applicable on this task.
      attr_accessor :allowed_actions

      # @return [String] The name.
      attr_accessor :friendly_name

      # @return [String] The State. It is one of these values - NotStarted,
      # InProgress, Succeeded, Failed, Cancelled, Suspended or Other.
      attr_accessor :state

      # @return [String] The description of the task state. For example - For
      # Succeeded state, description can be Completed, PartiallySucceeded,
      # CompletedWithInformation or Skipped.
      attr_accessor :state_description

      # @return [String] The type of task. Details in CustomDetails property
      # depend on this type.
      attr_accessor :task_type

      # @return [TaskTypeDetails] The custom task details based on the task
      # type.
      attr_accessor :custom_details

      # @return [GroupTaskDetails] The custom task details based on the task
      # type, if the task type is GroupTaskDetails or one of the types derived
      # from it.
      attr_accessor :group_task_custom_details

      # @return [Array<JobErrorDetails>] The task error details.
      attr_accessor :errors


      #
      # Mapper for ASRTask class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ASRTask',
          type: {
            name: 'Composite',
            class_name: 'ASRTask',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              allowed_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'allowedActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              friendly_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              state_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'stateDescription',
                type: {
                  name: 'String'
                }
              },
              task_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'taskType',
                type: {
                  name: 'String'
                }
              },
              custom_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'customDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'TaskTypeDetails',
                  class_name: 'TaskTypeDetails'
                }
              },
              group_task_custom_details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'groupTaskCustomDetails',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'instanceType',
                  uber_parent: 'GroupTaskDetails',
                  class_name: 'GroupTaskDetails'
                }
              },
              errors: {
                client_side_validation: true,
                required: false,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'JobErrorDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'JobErrorDetails'
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