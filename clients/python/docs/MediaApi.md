# swagger_client.MediaApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_upload_upload_post**](MediaApi.md#create_upload_upload_post) | **POST** /upload | Create Upload
[**delete_media_medias_media_id_delete**](MediaApi.md#delete_media_medias_media_id_delete) | **DELETE** /medias/{media_id} | Delete Media
[**read_media_medias_media_id_get**](MediaApi.md#read_media_medias_media_id_get) | **GET** /medias/{media_id} | Read Media
[**read_medias_medias_get**](MediaApi.md#read_medias_medias_get) | **GET** /medias | Read Medias
[**update_media_medias_media_id_patch**](MediaApi.md#update_media_medias_media_id_patch) | **PATCH** /medias/{media_id} | Update Media

# **create_upload_upload_post**
> GenericFileUploadResponse create_upload_upload_post(file, public=public)

Create Upload

Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   <span style:\"color:red\">WARN</span> : Uploading files with same filename might overwrite the existing files.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.MediaApi(swagger_client.ApiClient(configuration))
file = 'file_example' # str | 
public = false # bool |  (optional) (default to false)

try:
    # Create Upload
    api_response = api_instance.create_upload_upload_post(file, public=public)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MediaApi->create_upload_upload_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **str**|  | 
 **public** | **bool**|  | [optional] [default to false]

### Return type

[**GenericFileUploadResponse**](GenericFileUploadResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_media_medias_media_id_delete**
> SuccessResponseModel delete_media_medias_media_id_delete(media_id)

Delete Media

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.MediaApi(swagger_client.ApiClient(configuration))
media_id = 56 # int | 

try:
    # Delete Media
    api_response = api_instance.delete_media_medias_media_id_delete(media_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MediaApi->delete_media_medias_media_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **media_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_media_medias_media_id_get**
> MediaRead read_media_medias_media_id_get(media_id)

Read Media

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MediaApi()
media_id = 56 # int | 

try:
    # Read Media
    api_response = api_instance.read_media_medias_media_id_get(media_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MediaApi->read_media_medias_media_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **media_id** | **int**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_medias_medias_get**
> list[MediaRead] read_medias_medias_get(q=q, offset=offset, limit=limit)

Read Medias

Get all Media.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.MediaApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Medias
    api_response = api_instance.read_medias_medias_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MediaApi->read_medias_medias_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[MediaRead]**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_media_medias_media_id_patch**
> MediaRead update_media_medias_media_id_patch(body, media_id)

Update Media

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# Configure OAuth2 access token for authorization: OAuth2PasswordBearer
configuration = swagger_client.Configuration()
configuration.access_token = 'YOUR_ACCESS_TOKEN'

# create an instance of the API class
api_instance = swagger_client.MediaApi(swagger_client.ApiClient(configuration))
body = swagger_client.MediaUpdate() # MediaUpdate | 
media_id = 56 # int | 

try:
    # Update Media
    api_response = api_instance.update_media_medias_media_id_patch(body, media_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling MediaApi->update_media_medias_media_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MediaUpdate**](MediaUpdate.md)|  | 
 **media_id** | **int**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

