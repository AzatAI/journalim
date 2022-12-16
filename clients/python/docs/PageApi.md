# swagger_client.PageApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_page_language_page_languages_post**](PageApi.md#create_page_language_page_languages_post) | **POST** /page_languages | Create Page Language
[**create_page_pages_post**](PageApi.md#create_page_pages_post) | **POST** /pages | Create Page
[**delete_page_language_page_languages_page_language_id_delete**](PageApi.md#delete_page_language_page_languages_page_language_id_delete) | **DELETE** /page_languages/{page_language_id} | Delete Page Language
[**delete_page_pages_page_id_delete**](PageApi.md#delete_page_pages_page_id_delete) | **DELETE** /pages/{page_id} | Delete Page
[**read_page_language_page_languages_page_language_id_get**](PageApi.md#read_page_language_page_languages_page_language_id_get) | **GET** /page_languages/{page_language_id} | Read Page Language
[**read_page_languages_page_languages_get**](PageApi.md#read_page_languages_page_languages_get) | **GET** /page_languages | Read Page Languages
[**read_page_pages_page_id_get**](PageApi.md#read_page_pages_page_id_get) | **GET** /pages/{page_id} | Read Page
[**read_pages_pages_get**](PageApi.md#read_pages_pages_get) | **GET** /pages | Read Pages
[**update_page_language_page_languages_page_language_id_patch**](PageApi.md#update_page_language_page_languages_page_language_id_patch) | **PATCH** /page_languages/{page_language_id} | Update Page Language
[**update_page_pages_page_id_patch**](PageApi.md#update_page_pages_page_id_patch) | **PATCH** /pages/{page_id} | Update Page

# **create_page_language_page_languages_post**
> PageLanguageRead create_page_language_page_languages_post(body)

Create Page Language

Create a PageLanguage.

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
body = swagger_client.PageLanguageCreate() # PageLanguageCreate | 

try:
    # Create Page Language
    api_response = api_instance.create_page_language_page_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->create_page_language_page_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageCreate**](PageLanguageCreate.md)|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_page_pages_post**
> PageRead create_page_pages_post(body)

Create Page

Create a Page.

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
body = swagger_client.PageCreate() # PageCreate | 

try:
    # Create Page
    api_response = api_instance.create_page_pages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->create_page_pages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageCreate**](PageCreate.md)|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_page_language_page_languages_page_language_id_delete**
> SuccessResponseModel delete_page_language_page_languages_page_language_id_delete(page_language_id)

Delete Page Language

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
page_language_id = 56 # int | 

try:
    # Delete Page Language
    api_response = api_instance.delete_page_language_page_languages_page_language_id_delete(page_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->delete_page_language_page_languages_page_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_page_pages_page_id_delete**
> SuccessResponseModel delete_page_pages_page_id_delete(page_id)

Delete Page

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
page_id = 56 # int | 

try:
    # Delete Page
    api_response = api_instance.delete_page_pages_page_id_delete(page_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->delete_page_pages_page_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_page_language_page_languages_page_language_id_get**
> PageLanguageRead read_page_language_page_languages_page_language_id_get(page_language_id)

Read Page Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PageApi()
page_language_id = 56 # int | 

try:
    # Read Page Language
    api_response = api_instance.read_page_language_page_languages_page_language_id_get(page_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->read_page_language_page_languages_page_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_language_id** | **int**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_page_languages_page_languages_get**
> list[PageLanguageRead] read_page_languages_page_languages_get(q=q, offset=offset, limit=limit)

Read Page Languages

Get all PageLanguage.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PageApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Page Languages
    api_response = api_instance.read_page_languages_page_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->read_page_languages_page_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PageLanguageRead]**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_page_pages_page_id_get**
> PageRead read_page_pages_page_id_get(page_id)

Read Page

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PageApi()
page_id = 56 # int | 

try:
    # Read Page
    api_response = api_instance.read_page_pages_page_id_get(page_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->read_page_pages_page_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page_id** | **int**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_pages_pages_get**
> list[PageRead] read_pages_pages_get(q=q, offset=offset, limit=limit)

Read Pages

Get all Page.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PageApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Pages
    api_response = api_instance.read_pages_pages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->read_pages_pages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PageRead]**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_page_language_page_languages_page_language_id_patch**
> PageLanguageRead update_page_language_page_languages_page_language_id_patch(body, page_language_id)

Update Page Language

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
body = swagger_client.PageLanguageUpdate() # PageLanguageUpdate | 
page_language_id = 56 # int | 

try:
    # Update Page Language
    api_response = api_instance.update_page_language_page_languages_page_language_id_patch(body, page_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->update_page_language_page_languages_page_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageUpdate**](PageLanguageUpdate.md)|  | 
 **page_language_id** | **int**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_page_pages_page_id_patch**
> PageRead update_page_pages_page_id_patch(body, page_id)

Update Page

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
api_instance = swagger_client.PageApi(swagger_client.ApiClient(configuration))
body = swagger_client.PageUpdate() # PageUpdate | 
page_id = 56 # int | 

try:
    # Update Page
    api_response = api_instance.update_page_pages_page_id_patch(body, page_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PageApi->update_page_pages_page_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageUpdate**](PageUpdate.md)|  | 
 **page_id** | **int**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

