# swagger_client.AttachmentApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_attachment_attachments_post**](AttachmentApi.md#create_attachment_attachments_post) | **POST** /attachments | Create Attachment
[**delete_attachment_attachments_attachment_id_delete**](AttachmentApi.md#delete_attachment_attachments_attachment_id_delete) | **DELETE** /attachments/{attachment_id} | Delete Attachment
[**read_attachment_attachments_attachment_id_get**](AttachmentApi.md#read_attachment_attachments_attachment_id_get) | **GET** /attachments/{attachment_id} | Read Attachment
[**read_attachments_attachments_get**](AttachmentApi.md#read_attachments_attachments_get) | **GET** /attachments | Read Attachments
[**update_attachment_attachments_attachment_id_patch**](AttachmentApi.md#update_attachment_attachments_attachment_id_patch) | **PATCH** /attachments/{attachment_id} | Update Attachment

# **create_attachment_attachments_post**
> AttachmentRead create_attachment_attachments_post(body)

Create Attachment

Create a Attachment.

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
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
body = swagger_client.AttachmentCreate() # AttachmentCreate | 

try:
    # Create Attachment
    api_response = api_instance.create_attachment_attachments_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->create_attachment_attachments_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentCreate**](AttachmentCreate.md)|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_attachment_attachments_attachment_id_delete**
> SuccessResponseModel delete_attachment_attachments_attachment_id_delete(attachment_id)

Delete Attachment

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
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
attachment_id = 56 # int | 

try:
    # Delete Attachment
    api_response = api_instance.delete_attachment_attachments_attachment_id_delete(attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->delete_attachment_attachments_attachment_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_attachment_attachments_attachment_id_get**
> AttachmentRead read_attachment_attachments_attachment_id_get(attachment_id)

Read Attachment

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.AttachmentApi()
attachment_id = 56 # int | 

try:
    # Read Attachment
    api_response = api_instance.read_attachment_attachments_attachment_id_get(attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->read_attachment_attachments_attachment_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **int**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_attachments_attachments_get**
> list[AttachmentRead] read_attachments_attachments_get(q=q, offset=offset, limit=limit)

Read Attachments

Get all Attachment.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.AttachmentApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Attachments
    api_response = api_instance.read_attachments_attachments_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->read_attachments_attachments_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[AttachmentRead]**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_attachment_attachments_attachment_id_patch**
> AttachmentRead update_attachment_attachments_attachment_id_patch(body, attachment_id)

Update Attachment

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
api_instance = swagger_client.AttachmentApi(swagger_client.ApiClient(configuration))
body = swagger_client.AttachmentUpdate() # AttachmentUpdate | 
attachment_id = 56 # int | 

try:
    # Update Attachment
    api_response = api_instance.update_attachment_attachments_attachment_id_patch(body, attachment_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling AttachmentApi->update_attachment_attachments_attachment_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentUpdate**](AttachmentUpdate.md)|  | 
 **attachment_id** | **int**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

