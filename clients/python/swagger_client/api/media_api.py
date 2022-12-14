# coding: utf-8

"""
    JBS Backend Service

    Journalim Protocol Compatible Backend Service  # noqa: E501

    OpenAPI spec version: 0.0.1
    Contact: a@azat.ai
    Generated by: https://github.com/swagger-api/swagger-codegen.git
"""

from __future__ import absolute_import

import re  # noqa: F401

# python 2 and python 3 compatibility library
import six

from swagger_client.api_client import ApiClient


class MediaApi(object):
    """NOTE: This class is auto generated by the swagger code generator program.

    Do not edit the class manually.
    Ref: https://github.com/swagger-api/swagger-codegen
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client

    def create_upload_upload_post(self, file, **kwargs):  # noqa: E501
        """Create Upload  # noqa: E501

        Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   <span style:\"color:red\">WARN</span> : Uploading files with same filename might overwrite the existing files.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_upload_upload_post(file, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str file: (required)
        :param bool public:
        :return: GenericFileUploadResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.create_upload_upload_post_with_http_info(file, **kwargs)  # noqa: E501
        else:
            (data) = self.create_upload_upload_post_with_http_info(file, **kwargs)  # noqa: E501
            return data

    def create_upload_upload_post_with_http_info(self, file, **kwargs):  # noqa: E501
        """Create Upload  # noqa: E501

        Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   <span style:\"color:red\">WARN</span> : Uploading files with same filename might overwrite the existing files.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.create_upload_upload_post_with_http_info(file, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str file: (required)
        :param bool public:
        :return: GenericFileUploadResponse
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['file', 'public']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method create_upload_upload_post" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'file' is set
        if ('file' not in params or
                params['file'] is None):
            raise ValueError("Missing the required parameter `file` when calling `create_upload_upload_post`")  # noqa: E501

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'public' in params:
            query_params.append(('public', params['public']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}
        if 'file' in params:
            local_var_files['file'] = params['file']  # noqa: E501

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['multipart/form-data'])  # noqa: E501

        # Authentication setting
        auth_settings = ['OAuth2PasswordBearer']  # noqa: E501

        return self.api_client.call_api(
            '/upload', 'POST',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='GenericFileUploadResponse',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def delete_media_medias_media_id_delete(self, media_id, **kwargs):  # noqa: E501
        """Delete Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_media_medias_media_id_delete(media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int media_id: (required)
        :return: SuccessResponseModel
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.delete_media_medias_media_id_delete_with_http_info(media_id, **kwargs)  # noqa: E501
        else:
            (data) = self.delete_media_medias_media_id_delete_with_http_info(media_id, **kwargs)  # noqa: E501
            return data

    def delete_media_medias_media_id_delete_with_http_info(self, media_id, **kwargs):  # noqa: E501
        """Delete Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.delete_media_medias_media_id_delete_with_http_info(media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int media_id: (required)
        :return: SuccessResponseModel
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['media_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method delete_media_medias_media_id_delete" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'media_id' is set
        if ('media_id' not in params or
                params['media_id'] is None):
            raise ValueError("Missing the required parameter `media_id` when calling `delete_media_medias_media_id_delete`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'media_id' in params:
            path_params['media_id'] = params['media_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['OAuth2PasswordBearer']  # noqa: E501

        return self.api_client.call_api(
            '/medias/{media_id}', 'DELETE',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='SuccessResponseModel',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def read_media_medias_media_id_get(self, media_id, **kwargs):  # noqa: E501
        """Read Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.read_media_medias_media_id_get(media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int media_id: (required)
        :return: MediaRead
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.read_media_medias_media_id_get_with_http_info(media_id, **kwargs)  # noqa: E501
        else:
            (data) = self.read_media_medias_media_id_get_with_http_info(media_id, **kwargs)  # noqa: E501
            return data

    def read_media_medias_media_id_get_with_http_info(self, media_id, **kwargs):  # noqa: E501
        """Read Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.read_media_medias_media_id_get_with_http_info(media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param int media_id: (required)
        :return: MediaRead
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['media_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method read_media_medias_media_id_get" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'media_id' is set
        if ('media_id' not in params or
                params['media_id'] is None):
            raise ValueError("Missing the required parameter `media_id` when calling `read_media_medias_media_id_get`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'media_id' in params:
            path_params['media_id'] = params['media_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/medias/{media_id}', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='MediaRead',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def read_medias_medias_get(self, **kwargs):  # noqa: E501
        """Read Medias  # noqa: E501

        Get all Media.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.read_medias_medias_get(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str q:
        :param int offset:
        :param int limit:
        :return: list[MediaRead]
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.read_medias_medias_get_with_http_info(**kwargs)  # noqa: E501
        else:
            (data) = self.read_medias_medias_get_with_http_info(**kwargs)  # noqa: E501
            return data

    def read_medias_medias_get_with_http_info(self, **kwargs):  # noqa: E501
        """Read Medias  # noqa: E501

        Get all Media.  # noqa: E501
        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.read_medias_medias_get_with_http_info(async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param str q:
        :param int offset:
        :param int limit:
        :return: list[MediaRead]
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['q', 'offset', 'limit']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method read_medias_medias_get" % key
                )
            params[key] = val
        del params['kwargs']

        collection_formats = {}

        path_params = {}

        query_params = []
        if 'q' in params:
            query_params.append(('q', params['q']))  # noqa: E501
        if 'offset' in params:
            query_params.append(('offset', params['offset']))  # noqa: E501
        if 'limit' in params:
            query_params.append(('limit', params['limit']))  # noqa: E501

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = []  # noqa: E501

        return self.api_client.call_api(
            '/medias', 'GET',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='list[MediaRead]',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)

    def update_media_medias_media_id_patch(self, body, media_id, **kwargs):  # noqa: E501
        """Update Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_media_medias_media_id_patch(body, media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param MediaUpdate body: (required)
        :param int media_id: (required)
        :return: MediaRead
                 If the method is called asynchronously,
                 returns the request thread.
        """
        kwargs['_return_http_data_only'] = True
        if kwargs.get('async_req'):
            return self.update_media_medias_media_id_patch_with_http_info(body, media_id, **kwargs)  # noqa: E501
        else:
            (data) = self.update_media_medias_media_id_patch_with_http_info(body, media_id, **kwargs)  # noqa: E501
            return data

    def update_media_medias_media_id_patch_with_http_info(self, body, media_id, **kwargs):  # noqa: E501
        """Update Media  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True
        >>> thread = api.update_media_medias_media_id_patch_with_http_info(body, media_id, async_req=True)
        >>> result = thread.get()

        :param async_req bool
        :param MediaUpdate body: (required)
        :param int media_id: (required)
        :return: MediaRead
                 If the method is called asynchronously,
                 returns the request thread.
        """

        all_params = ['body', 'media_id']  # noqa: E501
        all_params.append('async_req')
        all_params.append('_return_http_data_only')
        all_params.append('_preload_content')
        all_params.append('_request_timeout')

        params = locals()
        for key, val in six.iteritems(params['kwargs']):
            if key not in all_params:
                raise TypeError(
                    "Got an unexpected keyword argument '%s'"
                    " to method update_media_medias_media_id_patch" % key
                )
            params[key] = val
        del params['kwargs']
        # verify the required parameter 'body' is set
        if ('body' not in params or
                params['body'] is None):
            raise ValueError("Missing the required parameter `body` when calling `update_media_medias_media_id_patch`")  # noqa: E501
        # verify the required parameter 'media_id' is set
        if ('media_id' not in params or
                params['media_id'] is None):
            raise ValueError("Missing the required parameter `media_id` when calling `update_media_medias_media_id_patch`")  # noqa: E501

        collection_formats = {}

        path_params = {}
        if 'media_id' in params:
            path_params['media_id'] = params['media_id']  # noqa: E501

        query_params = []

        header_params = {}

        form_params = []
        local_var_files = {}

        body_params = None
        if 'body' in params:
            body_params = params['body']
        # HTTP header `Accept`
        header_params['Accept'] = self.api_client.select_header_accept(
            ['application/json'])  # noqa: E501

        # HTTP header `Content-Type`
        header_params['Content-Type'] = self.api_client.select_header_content_type(  # noqa: E501
            ['application/json'])  # noqa: E501

        # Authentication setting
        auth_settings = ['OAuth2PasswordBearer']  # noqa: E501

        return self.api_client.call_api(
            '/medias/{media_id}', 'PATCH',
            path_params,
            query_params,
            header_params,
            body=body_params,
            post_params=form_params,
            files=local_var_files,
            response_type='MediaRead',  # noqa: E501
            auth_settings=auth_settings,
            async_req=params.get('async_req'),
            _return_http_data_only=params.get('_return_http_data_only'),
            _preload_content=params.get('_preload_content', True),
            _request_timeout=params.get('_request_timeout'),
            collection_formats=collection_formats)
