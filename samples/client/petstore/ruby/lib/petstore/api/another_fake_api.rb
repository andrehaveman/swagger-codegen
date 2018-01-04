=begin
#Swagger Petstore

#This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\

OpenAPI spec version: 1.0.0
Contact: apiteam@swagger.io
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require "uri"

module Petstore
  class AnotherFakeApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # To test special tags
    # To test special tags
    # @param body client model
    # @param [Hash] opts the optional parameters
    # @return [Client]
    def test_special_tags(body, opts = {})
      data, _status_code, _headers = test_special_tags_with_http_info(body, opts)
      return data
    end

    # To test special tags
    # To test special tags
    # @param body client model
    # @param [Hash] opts the optional parameters
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def test_special_tags_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AnotherFakeApi.test_special_tags ..."
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling AnotherFakeApi.test_special_tags"
      end
      # resource path
      local_var_path = "/another-fake/dummy"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(body)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AnotherFakeApi#test_special_tags\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
