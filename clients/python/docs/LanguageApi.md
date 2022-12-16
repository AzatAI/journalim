# swagger_client.LanguageApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_language_languages_post**](LanguageApi.md#create_language_languages_post) | **POST** /languages | Create Language
[**delete_language_languages_language_id_delete**](LanguageApi.md#delete_language_languages_language_id_delete) | **DELETE** /languages/{language_id} | Delete Language
[**read_language_languages_language_id_get**](LanguageApi.md#read_language_languages_language_id_get) | **GET** /languages/{language_id} | Read Language
[**read_languages_languages_get**](LanguageApi.md#read_languages_languages_get) | **GET** /languages | Read Languages
[**update_language_languages_language_id_patch**](LanguageApi.md#update_language_languages_language_id_patch) | **PATCH** /languages/{language_id} | Update Language

# **create_language_languages_post**
> LanguageRead create_language_languages_post(body)

Create Language

Create a Language.

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
api_instance = swagger_client.LanguageApi(swagger_client.ApiClient(configuration))
body = swagger_client.LanguageCreate() # LanguageCreate | 

try:
    # Create Language
    api_response = api_instance.create_language_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LanguageApi->create_language_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageCreate**](LanguageCreate.md)|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_language_languages_language_id_delete**
> SuccessResponseModel delete_language_languages_language_id_delete(language_id)

Delete Language

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
api_instance = swagger_client.LanguageApi(swagger_client.ApiClient(configuration))
language_id = 56 # int | 

try:
    # Delete Language
    api_response = api_instance.delete_language_languages_language_id_delete(language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LanguageApi->delete_language_languages_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_language_languages_language_id_get**
> LanguageRead read_language_languages_language_id_get(language_id)

Read Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.LanguageApi()
language_id = 56 # int | 

try:
    # Read Language
    api_response = api_instance.read_language_languages_language_id_get(language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LanguageApi->read_language_languages_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **language_id** | **int**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_languages_languages_get**
> list[LanguageRead] read_languages_languages_get(q=q, offset=offset, limit=limit)

Read Languages

Get all Language.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.LanguageApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Languages
    api_response = api_instance.read_languages_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LanguageApi->read_languages_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[LanguageRead]**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_language_languages_language_id_patch**
> LanguageRead update_language_languages_language_id_patch(body, language_id)

Update Language

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
api_instance = swagger_client.LanguageApi(swagger_client.ApiClient(configuration))
body = swagger_client.LanguageUpdate() # LanguageUpdate | 
language_id = 56 # int | 

try:
    # Update Language
    api_response = api_instance.update_language_languages_language_id_patch(body, language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling LanguageApi->update_language_languages_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageUpdate**](LanguageUpdate.md)|  | 
 **language_id** | **int**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

