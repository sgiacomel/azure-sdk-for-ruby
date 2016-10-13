# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  #
  # Microsoft Azure Mobile Engagement REST APIs.
  #
  class ImportTasks
    include Azure::ARM::MobileEngagement::Models
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ImportTasks class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [EngagementManagementClient] reference to the EngagementManagementClient
    attr_reader :client

    #
    # Get the list of import jobs.
    #
    # @param skip [Integer] Control paging of import jobs, start results at the
    # given offset, defaults to 0 (1st page of data).
    # @param top [Integer] Control paging of import jobs, number of import jobs to
    # return with each call. By default, it returns all import jobs with a
    # default paging of 20.
    # The response contains a `nextLink` property describing the path to get the
    # next page if there are more results.
    # The maximum paging limit for $top is 40.
    # @param orderby [String] Sort results by an expression which looks like
    # `$orderby=jobId asc` (default when not specified).
    # The syntax is orderby={property} {direction} or just orderby={property}.
    # Properties that can be specified for sorting: jobId, errorDetails,
    # dateCreated, jobStatus, and dateCreated.
    # The available directions are asc (for ascending order) and desc (for
    # descending order).
    # When not specified the asc direction is used.
    # Only one orderby property can be specified.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ImportTaskListResult] which provide lazy access to pages of the
    # response.
    #
    def list_as_lazy(skip = 0, top = 20, orderby = nil, custom_headers = nil)
      response = list_async(skip, top, orderby, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

    #
    # Get the list of import jobs.
    #
    # @param skip [Integer] Control paging of import jobs, start results at the
    # given offset, defaults to 0 (1st page of data).
    # @param top [Integer] Control paging of import jobs, number of import jobs to
    # return with each call. By default, it returns all import jobs with a
    # default paging of 20.
    # The response contains a `nextLink` property describing the path to get the
    # next page if there are more results.
    # The maximum paging limit for $top is 40.
    # @param orderby [String] Sort results by an expression which looks like
    # `$orderby=jobId asc` (default when not specified).
    # The syntax is orderby={property} {direction} or just orderby={property}.
    # Properties that can be specified for sorting: jobId, errorDetails,
    # dateCreated, jobStatus, and dateCreated.
    # The available directions are asc (for ascending order) and desc (for
    # descending order).
    # When not specified the asc direction is used.
    # Only one orderby property can be specified.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<ImportTaskResult>] operation results.
    #
    def list(skip = 0, top = 20, orderby = nil, custom_headers = nil)
      first_page = list_as_lazy(skip, top, orderby, custom_headers)
      first_page.get_all_items
    end

    #
    # Get the list of import jobs.
    #
    # @param skip [Integer] Control paging of import jobs, start results at the
    # given offset, defaults to 0 (1st page of data).
    # @param top [Integer] Control paging of import jobs, number of import jobs to
    # return with each call. By default, it returns all import jobs with a
    # default paging of 20.
    # The response contains a `nextLink` property describing the path to get the
    # next page if there are more results.
    # The maximum paging limit for $top is 40.
    # @param orderby [String] Sort results by an expression which looks like
    # `$orderby=jobId asc` (default when not specified).
    # The syntax is orderby={property} {direction} or just orderby={property}.
    # Properties that can be specified for sorting: jobId, errorDetails,
    # dateCreated, jobStatus, and dateCreated.
    # The available directions are asc (for ascending order) and desc (for
    # descending order).
    # When not specified the asc direction is used.
    # Only one orderby property can be specified.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(skip = 0, top = 20, orderby = nil, custom_headers = nil)
      list_async(skip, top, orderby, custom_headers).value!
    end

    #
    # Get the list of import jobs.
    #
    # @param skip [Integer] Control paging of import jobs, start results at the
    # given offset, defaults to 0 (1st page of data).
    # @param top [Integer] Control paging of import jobs, number of import jobs to
    # return with each call. By default, it returns all import jobs with a
    # default paging of 20.
    # The response contains a `nextLink` property describing the path to get the
    # next page if there are more results.
    # The maximum paging limit for $top is 40.
    # @param orderby [String] Sort results by an expression which looks like
    # `$orderby=jobId asc` (default when not specified).
    # The syntax is orderby={property} {direction} or just orderby={property}.
    # Properties that can be specified for sorting: jobId, errorDetails,
    # dateCreated, jobStatus, and dateCreated.
    # The available directions are asc (for ascending order) and desc (for
    # descending order).
    # When not specified the asc direction is used.
    # Only one orderby property can be specified.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(skip = 0, top = 20, orderby = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices/importTasks'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
          query_params: {'api-version' => @client.api_version,'$skip' => skip,'$top' => top,'$orderby' => orderby},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = ImportTaskListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Creates a job to import the specified data to a storageUrl.
    #
    # @param parameters [ImportTask]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ImportTaskResult] operation results.
    #
    def create(parameters, custom_headers = nil)
      response = create_async(parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a job to import the specified data to a storageUrl.
    #
    # @param parameters [ImportTask]
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(parameters, custom_headers = nil)
      create_async(parameters, custom_headers).value!
    end

    #
    # Creates a job to import the specified data to a storageUrl.
    #
    # @param parameters [ImportTask]
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(parameters, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = ImportTask.mapper()
      request_content = @client.serialize(request_mapper,  parameters, 'parameters')
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices/importTasks'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
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
        unless status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ImportTaskResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 202
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = ImportTaskResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # The Get import job operation retrieves information about a previously
    # created import job.
    #
    # @param id [String] Import job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ImportTaskResult] operation results.
    #
    def get(id, custom_headers = nil)
      response = get_async(id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # The Get import job operation retrieves information about a previously
    # created import job.
    #
    # @param id [String] Import job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(id, custom_headers = nil)
      get_async(id, custom_headers).value!
    end

    #
    # The Get import job operation retrieves information about a previously
    # created import job.
    #
    # @param id [String] Import job identifier.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(id, custom_headers = nil)
      fail ArgumentError, 'id is nil' if id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.app_collection is nil' if @client.app_collection.nil?
      fail ArgumentError, '@client.app_name is nil' if @client.app_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MobileEngagement/appcollections/{appCollection}/apps/{appName}/devices/importTasks/{id}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'id' => id,'subscriptionId' => @client.subscription_id,'resourceGroupName' => @client.resource_group_name,'appCollection' => @client.app_collection,'appName' => @client.app_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = ImportTaskResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response, 'result.body')
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Get the list of import jobs.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ImportTaskListResult] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the list of import jobs.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Get the list of import jobs.
    #
    # @param next_page_link [String] The NextLink from the previous successful
    # call to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = ImportTaskListResult.mapper()
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
