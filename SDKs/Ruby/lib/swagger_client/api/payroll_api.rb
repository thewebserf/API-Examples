=begin
#MINDBODY Public API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: v6

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.6

=end

require 'uri'

module SwaggerClient
  class PayrollApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get class payroll for staff members.
    # A staff authorization token is not required for this endpoint, but if one is passed, its permissions are honored. Depending on the access permissions configured for the staff member whose token is passed, the endpoint returns either only the payroll information for that staff member or it returns the payroll information for all staff members.    Note that if a staff member is not paid for a class, earnings of zero are returned by this endpoint.    Note that this endpoint calculates both bonus and no-reg rates for assistants.These rates are not supported by the Payroll report in the web interface.    Note that this endpoint returns both the teacher’s adjusted rate and the assistant’s pay rate when the assistant is paid by the teacher.The Payroll report in the web interface only returns the teacher’s adjusted rate.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [DateTime] :request_end_date_time The end of the date range for the payroll information to be returned. The maximum allowed date range is 14 days.&lt;br /&gt;  Default: **Today’s date**  * If you do not supply an &#x60;EndDateTime&#x60;, the data returns for the period from the &#x60;StartDateTime&#x60; that you supply to today’s date.  * If you do not supply an &#x60;EndDateTime&#x60; or a &#x60;StartDateTime&#x60;, data returns for the seven days prior to today’s date.
    # @option opts [BOOLEAN] :request_include_inactive_staff When &#x60;true&#x60;, payroll information returns for both active and inactive staff members.&lt;br /&gt;  Default: **false**
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Integer] :request_staff_id A list of staff IDs that you want to retrieve payroll information for. If you do not supply a &#x60;StaffId&#x60;, all active staff members return, ordered by staff ID.
    # @option opts [DateTime] :request_start_date_time The beginning of the date range for the payroll information to be returned. The maximum allowed date range is 14 days.  * If you do not supply a &#x60;StartDateTime&#x60;, data returns for the seven days prior to the &#x60;EndDateTime&#x60; that you supply.  * If you do not supply either a &#x60;StartDateTime&#x60; or an &#x60;EndDateTime&#x60;, the data returns for seven days prior to today’s date.
    # @return [GetClassPayrollResponse]
    def payroll_get_class_payroll(site_id, version, opts = {})
      data, _status_code, _headers = payroll_get_class_payroll_with_http_info(site_id, version, opts)
      data
    end

    # Get class payroll for staff members.
    # A staff authorization token is not required for this endpoint, but if one is passed, its permissions are honored. Depending on the access permissions configured for the staff member whose token is passed, the endpoint returns either only the payroll information for that staff member or it returns the payroll information for all staff members.    Note that if a staff member is not paid for a class, earnings of zero are returned by this endpoint.    Note that this endpoint calculates both bonus and no-reg rates for assistants.These rates are not supported by the Payroll report in the web interface.    Note that this endpoint returns both the teacher’s adjusted rate and the assistant’s pay rate when the assistant is paid by the teacher.The Payroll report in the web interface only returns the teacher’s adjusted rate.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [DateTime] :request_end_date_time The end of the date range for the payroll information to be returned. The maximum allowed date range is 14 days.&lt;br /&gt;  Default: **Today’s date**  * If you do not supply an &#x60;EndDateTime&#x60;, the data returns for the period from the &#x60;StartDateTime&#x60; that you supply to today’s date.  * If you do not supply an &#x60;EndDateTime&#x60; or a &#x60;StartDateTime&#x60;, data returns for the seven days prior to today’s date.
    # @option opts [BOOLEAN] :request_include_inactive_staff When &#x60;true&#x60;, payroll information returns for both active and inactive staff members.&lt;br /&gt;  Default: **false**
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Integer] :request_staff_id A list of staff IDs that you want to retrieve payroll information for. If you do not supply a &#x60;StaffId&#x60;, all active staff members return, ordered by staff ID.
    # @option opts [DateTime] :request_start_date_time The beginning of the date range for the payroll information to be returned. The maximum allowed date range is 14 days.  * If you do not supply a &#x60;StartDateTime&#x60;, data returns for the seven days prior to the &#x60;EndDateTime&#x60; that you supply.  * If you do not supply either a &#x60;StartDateTime&#x60; or an &#x60;EndDateTime&#x60;, the data returns for seven days prior to today’s date.
    # @return [Array<(GetClassPayrollResponse, Fixnum, Hash)>] GetClassPayrollResponse data, response status code and response headers
    def payroll_get_class_payroll_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayrollApi.payroll_get_class_payroll ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling PayrollApi.payroll_get_class_payroll"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PayrollApi.payroll_get_class_payroll"
      end
      # resource path
      local_var_path = '/public/v{version}/payroll/classes'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.endDateTime'] = opts[:'request_end_date_time'] if !opts[:'request_end_date_time'].nil?
      query_params[:'request.includeInactiveStaff'] = opts[:'request_include_inactive_staff'] if !opts[:'request_include_inactive_staff'].nil?
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.staffId'] = opts[:'request_staff_id'] if !opts[:'request_staff_id'].nil?
      query_params[:'request.startDateTime'] = opts[:'request_start_date_time'] if !opts[:'request_start_date_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetClassPayrollResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayrollApi#payroll_get_class_payroll\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get time card payroll for staff members.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token. (default to )
    # @option opts [DateTime] :request_end_date_time The end of the date range for the time card information to be returned. If you do not supply an &#x60;EndDateTime&#x60;, data returns for the seven days prior to today’s date. Classes that begin before the &#x60;EndDateTime&#x60; are included in the response, regardless of the time that the class ends. The maximum allowed date range is 14 days.&lt;br /&gt;  Default: **Today’s date**
    # @option opts [BOOLEAN] :request_include_inactive_staff When &#x60;true&#x60;, payroll information returns for both active and inactive staff members.&lt;br /&gt;  Default: **false**
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Integer] :request_staff_id The staff ID for whom you want to retrieve time card information. If you do not supply a &#x60;StaffId&#x60;, all active staff members return, ordered by staff ID.
    # @option opts [DateTime] :request_start_date_time The beginning of the date range for the time card information to be returned. If you do not supply a &#x60;StartDateTime&#x60;, data returns for the seven days prior to the &#x60;EndDateTime&#x60; that you supply. The maximum allowed date range is 14 days.
    # @return [GetTimeClockResponse]
    def payroll_get_time_clock(site_id, version, opts = {})
      data, _status_code, _headers = payroll_get_time_clock_with_http_info(site_id, version, opts)
      data
    end

    # Get time card payroll for staff members.
    # @param site_id ID of the site from which to pull data.
    # @param version 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :authorization A staff user authorization token.
    # @option opts [DateTime] :request_end_date_time The end of the date range for the time card information to be returned. If you do not supply an &#x60;EndDateTime&#x60;, data returns for the seven days prior to today’s date. Classes that begin before the &#x60;EndDateTime&#x60; are included in the response, regardless of the time that the class ends. The maximum allowed date range is 14 days.&lt;br /&gt;  Default: **Today’s date**
    # @option opts [BOOLEAN] :request_include_inactive_staff When &#x60;true&#x60;, payroll information returns for both active and inactive staff members.&lt;br /&gt;  Default: **false**
    # @option opts [Integer] :request_limit Number of results to include, defaults to 100
    # @option opts [Integer] :request_offset Page offset, defaults to 0.
    # @option opts [Integer] :request_staff_id The staff ID for whom you want to retrieve time card information. If you do not supply a &#x60;StaffId&#x60;, all active staff members return, ordered by staff ID.
    # @option opts [DateTime] :request_start_date_time The beginning of the date range for the time card information to be returned. If you do not supply a &#x60;StartDateTime&#x60;, data returns for the seven days prior to the &#x60;EndDateTime&#x60; that you supply. The maximum allowed date range is 14 days.
    # @return [Array<(GetTimeClockResponse, Fixnum, Hash)>] GetTimeClockResponse data, response status code and response headers
    def payroll_get_time_clock_with_http_info(site_id, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PayrollApi.payroll_get_time_clock ...'
      end
      # verify the required parameter 'site_id' is set
      if @api_client.config.client_side_validation && site_id.nil?
        fail ArgumentError, "Missing the required parameter 'site_id' when calling PayrollApi.payroll_get_time_clock"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PayrollApi.payroll_get_time_clock"
      end
      # resource path
      local_var_path = '/public/v{version}/payroll/timeclock'.sub('{' + 'version' + '}', version.to_s)

      # query parameters
      query_params = {}
      query_params[:'request.endDateTime'] = opts[:'request_end_date_time'] if !opts[:'request_end_date_time'].nil?
      query_params[:'request.includeInactiveStaff'] = opts[:'request_include_inactive_staff'] if !opts[:'request_include_inactive_staff'].nil?
      query_params[:'request.limit'] = opts[:'request_limit'] if !opts[:'request_limit'].nil?
      query_params[:'request.offset'] = opts[:'request_offset'] if !opts[:'request_offset'].nil?
      query_params[:'request.staffId'] = opts[:'request_staff_id'] if !opts[:'request_staff_id'].nil?
      query_params[:'request.startDateTime'] = opts[:'request_start_date_time'] if !opts[:'request_start_date_time'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])
      header_params[:'siteId'] = site_id
      header_params[:'authorization'] = opts[:'authorization'] if !opts[:'authorization'].nil?

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GetTimeClockResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PayrollApi#payroll_get_time_clock\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
