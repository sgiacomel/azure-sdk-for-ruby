# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  #
  # Use these APIs to manage Azure CDN resources through the Azure Resource
  # Manager. You must make sure that requests made to these resources are
  # secure. For more information, see <a
  # href="https://msdn.microsoft.com/en-us/library/azure/dn790557.aspx">Authenticating
  # Azure Resource Manager requests.</a>
  #
  class NameAvailability
    include Azure::ARM::CDN::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the NameAvailability class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [CdnManagementClient] reference to the CdnManagementClient
    attr_reader :client

    #
    # Check the availability of a resource name without creating the resource.
    # This is needed for resources where name is globally unique, such as a CDN
    # endpoint.
    #
    # @param check_name_availability_input [CheckNameAvailabilityInput] Input to
    # check.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CheckNameAvailabilityOutput] operation results.
    #
    def check_name_availability(check_name_availability_input, custom_headers = nil)
      response = check_name_availability_async(check_name_availability_input, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Check the availability of a resource name without creating the resource.
    # This is needed for resources where name is globally unique, such as a CDN
    # endpoint.
    #
    # @param check_name_availability_input [CheckNameAvailabilityInput] Input to
    # check.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_name_availability_with_http_info(check_name_availability_input, custom_headers = nil)
      check_name_availability_async(check_name_availability_input, custom_headers).value!
    end

    #
    # Check the availability of a resource name without creating the resource.
    # This is needed for resources where name is globally unique, such as a CDN
    # endpoint.
    #
    # @param check_name_availability_input [CheckNameAvailabilityInput] Input to
    # check.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_name_availability_async(check_name_availability_input, custom_headers = nil)
      fail ArgumentError, 'check_name_availability_input is nil' if check_name_availability_input.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = CheckNameAvailabilityInput.mapper()
      request_content = @client.serialize(request_mapper,  check_name_availability_input, 'check_name_availability_input')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/providers/Microsoft.Cdn/checkNameAvailability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = CheckNameAvailabilityOutput.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
