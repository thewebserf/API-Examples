# coding: utf-8

"""
    MINDBODY Public API

    No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)  # noqa: E501

    OpenAPI spec version: v6
    
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""


from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class SiteApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def site_get_activation_code(self, version, **kwargs):  # noqa: E501
        """Get an activation code for a site.  # noqa: E501

        Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_activation_code(version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :return: GetActivationCodeResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_activation_code_with_http_info(version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_activation_code_with_http_info(version, **kwargs)  # noqa: E501
            return data

    def site_get_activation_code_with_http_info(self, version, **kwargs):  # noqa: E501
        """Get an activation code for a site.  # noqa: E501

        Before you can use this endpoint, MINDBODY must approve your developer account for live access. If you have finished testing in the sandbox and are ready to begin working with MINDBODY customers, log into your account and request to go live.    See [Accessing Business Data From MINDBODY](https://developers.mindbodyonline.com/PublicDocumentation/V6#accessing-business-data) for more information about the activation code and how to use it.    Once you are approved, this endpoint returns an activation code.This endpoint supports only one site per call.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_activation_code_with_http_info(version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :return: GetActivationCodeResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['version', 'authorization']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_activation_code" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_activation_code`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []

        header_params = {}
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/activationcode', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetActivationCodeResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def site_get_locations(self, site_id, version, **kwargs):  # noqa: E501
        """Get locations for a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_locations(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :return: GetLocationsResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_locations_with_http_info(site_id, version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_locations_with_http_info(site_id, version, **kwargs)  # noqa: E501
            return data

    def site_get_locations_with_http_info(self, site_id, version, **kwargs):  # noqa: E501
        """Get locations for a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_locations_with_http_info(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :return: GetLocationsResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['site_id', 'version', 'authorization', 'request_limit', 'request_offset']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_locations" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'site_id' is set
        if ('site_id' not in params or
                params['site_id'] is None):
            raise ValueError("Missing the required parameter `site_id` when calling `site_get_locations`")  # noqa: E501
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_locations`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []
        if 'request_limit' in params:
            query_params.append(('request.limit', params['request_limit']))  # noqa: E501
        if 'request_offset' in params:
            query_params.append(('request.offset', params['request_offset']))  # noqa: E501

        header_params = {}
        if 'site_id' in params:
            header_params['siteId'] = params['site_id']  # noqa: E501
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/locations', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetLocationsResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def site_get_programs(self, site_id, version, **kwargs):  # noqa: E501
        """Get service categories offered at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_programs(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param bool request_online_only: If `true`, filters results to show only those programs that are shown online.<br />  If `false`, all programs are returned.<br />  Default: **false**
        :param str request_schedule_type: A schedule type used to filter the returned results.
        :return: GetProgramsResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_programs_with_http_info(site_id, version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_programs_with_http_info(site_id, version, **kwargs)  # noqa: E501
            return data

    def site_get_programs_with_http_info(self, site_id, version, **kwargs):  # noqa: E501
        """Get service categories offered at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_programs_with_http_info(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param bool request_online_only: If `true`, filters results to show only those programs that are shown online.<br />  If `false`, all programs are returned.<br />  Default: **false**
        :param str request_schedule_type: A schedule type used to filter the returned results.
        :return: GetProgramsResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['site_id', 'version', 'authorization', 'request_limit', 'request_offset', 'request_online_only', 'request_schedule_type']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_programs" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'site_id' is set
        if ('site_id' not in params or
                params['site_id'] is None):
            raise ValueError("Missing the required parameter `site_id` when calling `site_get_programs`")  # noqa: E501
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_programs`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []
        if 'request_limit' in params:
            query_params.append(('request.limit', params['request_limit']))  # noqa: E501
        if 'request_offset' in params:
            query_params.append(('request.offset', params['request_offset']))  # noqa: E501
        if 'request_online_only' in params:
            query_params.append(('request.onlineOnly', params['request_online_only']))  # noqa: E501
        if 'request_schedule_type' in params:
            query_params.append(('request.scheduleType', params['request_schedule_type']))  # noqa: E501

        header_params = {}
        if 'site_id' in params:
            header_params['siteId'] = params['site_id']  # noqa: E501
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/programs', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetProgramsResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def site_get_resources(self, site_id, version, **kwargs):  # noqa: E501
        """Get resources used at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_resources(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param datetime request_end_date_time: The time the resource ends. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_location_id: The location of the resource. This parameter is ignored if `EndDateTime` or `LocationID` is not set.<br />  Default: **all**
        :param int request_offset: Page offset, defaults to 0.
        :param list[int] request_session_type_ids: List of session type IDs.<br />  Default: **all**
        :param datetime request_start_date_time: The time the resource starts. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
        :return: GetResourcesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_resources_with_http_info(site_id, version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_resources_with_http_info(site_id, version, **kwargs)  # noqa: E501
            return data

    def site_get_resources_with_http_info(self, site_id, version, **kwargs):  # noqa: E501
        """Get resources used at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_resources_with_http_info(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param datetime request_end_date_time: The time the resource ends. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_location_id: The location of the resource. This parameter is ignored if `EndDateTime` or `LocationID` is not set.<br />  Default: **all**
        :param int request_offset: Page offset, defaults to 0.
        :param list[int] request_session_type_ids: List of session type IDs.<br />  Default: **all**
        :param datetime request_start_date_time: The time the resource starts. This parameter is ignored if `EndDateTime` or `LocationID` is not set.
        :return: GetResourcesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['site_id', 'version', 'authorization', 'request_end_date_time', 'request_limit', 'request_location_id', 'request_offset', 'request_session_type_ids', 'request_start_date_time']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_resources" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'site_id' is set
        if ('site_id' not in params or
                params['site_id'] is None):
            raise ValueError("Missing the required parameter `site_id` when calling `site_get_resources`")  # noqa: E501
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_resources`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []
        if 'request_end_date_time' in params:
            query_params.append(('request.endDateTime', params['request_end_date_time']))  # noqa: E501
        if 'request_limit' in params:
            query_params.append(('request.limit', params['request_limit']))  # noqa: E501
        if 'request_location_id' in params:
            query_params.append(('request.locationId', params['request_location_id']))  # noqa: E501
        if 'request_offset' in params:
            query_params.append(('request.offset', params['request_offset']))  # noqa: E501
        if 'request_session_type_ids' in params:
            query_params.append(('request.sessionTypeIds', params['request_session_type_ids']))  # noqa: E501
            collection_formats['request.sessionTypeIds'] = 'multi'  # noqa: E501
        if 'request_start_date_time' in params:
            query_params.append(('request.startDateTime', params['request_start_date_time']))  # noqa: E501

        header_params = {}
        if 'site_id' in params:
            header_params['siteId'] = params['site_id']  # noqa: E501
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/resources', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetResourcesResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def site_get_session_types(self, site_id, version, **kwargs):  # noqa: E501
        """Get the session types used at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_session_types(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param bool request_online_only: When `true`, indicates that only the session types that can be booked online should be returned.<br />  Default: **false**
        :param list[int] request_program_i_ds: Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return.
        :return: GetSessionTypesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_session_types_with_http_info(site_id, version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_session_types_with_http_info(site_id, version, **kwargs)  # noqa: E501
            return data

    def site_get_session_types_with_http_info(self, site_id, version, **kwargs):  # noqa: E501
        """Get the session types used at a site.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_session_types_with_http_info(site_id, version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str site_id: ID of the site from which to pull data. (required)
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param bool request_online_only: When `true`, indicates that only the session types that can be booked online should be returned.<br />  Default: **false**
        :param list[int] request_program_i_ds: Filters results to session types that belong to one of the given program IDs. If omitted, all program IDs return.
        :return: GetSessionTypesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['site_id', 'version', 'authorization', 'request_limit', 'request_offset', 'request_online_only', 'request_program_i_ds']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_session_types" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'site_id' is set
        if ('site_id' not in params or
                params['site_id'] is None):
            raise ValueError("Missing the required parameter `site_id` when calling `site_get_session_types`")  # noqa: E501
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_session_types`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []
        if 'request_limit' in params:
            query_params.append(('request.limit', params['request_limit']))  # noqa: E501
        if 'request_offset' in params:
            query_params.append(('request.offset', params['request_offset']))  # noqa: E501
        if 'request_online_only' in params:
            query_params.append(('request.onlineOnly', params['request_online_only']))  # noqa: E501
        if 'request_program_i_ds' in params:
            query_params.append(('request.programIDs', params['request_program_i_ds']))  # noqa: E501
            collection_formats['request.programIDs'] = 'multi'  # noqa: E501

        header_params = {}
        if 'site_id' in params:
            header_params['siteId'] = params['site_id']  # noqa: E501
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/sessiontypes', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetSessionTypesResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def site_get_sites(self, version, **kwargs):  # noqa: E501
        """Get all sites that can be accessed by an API Key.  # noqa: E501

        Gets a list of sites that the developer has permission to view.  * Passing in no `SiteIds` returns all sites that the developer has access to.  * Passing in one `SiteIds` returns more detailed information about the specified site.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_sites(version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param list[int] request_site_ids: List of the requested site IDs. When omitted, returns all sites that the source has access to.
        :return: GetSitesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.site_get_sites_with_http_info(version, **kwargs)  # noqa: E501
        else:
            (data) = self.site_get_sites_with_http_info(version, **kwargs)  # noqa: E501
            return data

    def site_get_sites_with_http_info(self, version, **kwargs):  # noqa: E501
        """Get all sites that can be accessed by an API Key.  # noqa: E501

        Gets a list of sites that the developer has permission to view.  * Passing in no `SiteIds` returns all sites that the developer has access to.  * Passing in one `SiteIds` returns more detailed information about the specified site.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.site_get_sites_with_http_info(version, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str version: (required)
        :param str authorization: A staff user authorization token.
        :param int request_limit: Number of results to include, defaults to 100
        :param int request_offset: Page offset, defaults to 0.
        :param list[int] request_site_ids: List of the requested site IDs. When omitted, returns all sites that the source has access to.
        :return: GetSitesResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['version', 'authorization', 'request_limit', 'request_offset', 'request_site_ids']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method site_get_sites" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'version' is set
        if ('version' not in params or
                params['version'] is None):
            raise ValueError("Missing the required parameter `version` when calling `site_get_sites`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'version' in params:
            path_params['version'] = params['version']  # noqa: E501

        query_params = []
        if 'request_limit' in params:
            query_params.append(('request.limit', params['request_limit']))  # noqa: E501
        if 'request_offset' in params:
            query_params.append(('request.offset', params['request_offset']))  # noqa: E501
        if 'request_site_ids' in params:
            query_params.append(('request.siteIds', params['request_site_ids']))  # noqa: E501
            collection_formats['request.siteIds'] = 'multi'  # noqa: E501

        header_params = {}
        if 'authorization' in params:
            header_params['authorization'] = params['authorization']  # noqa: E501

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json', 'text/json', 'application/xml', 'text/xml', 'multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/public/v{version}/site/sites', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GetSitesResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)