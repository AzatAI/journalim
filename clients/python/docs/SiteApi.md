# swagger_client.SiteApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_site_language_site_languages_post**](SiteApi.md#create_site_language_site_languages_post) | **POST** /site_languages | Create Site Language
[**create_site_sites_post**](SiteApi.md#create_site_sites_post) | **POST** /sites | Create Site
[**delete_site_language_site_languages_site_language_id_delete**](SiteApi.md#delete_site_language_site_languages_site_language_id_delete) | **DELETE** /site_languages/{site_language_id} | Delete Site Language
[**delete_site_sites_site_id_delete**](SiteApi.md#delete_site_sites_site_id_delete) | **DELETE** /sites/{site_id} | Delete Site
[**read_site_language_site_languages_site_language_id_get**](SiteApi.md#read_site_language_site_languages_site_language_id_get) | **GET** /site_languages/{site_language_id} | Read Site Language
[**read_site_languages_site_languages_get**](SiteApi.md#read_site_languages_site_languages_get) | **GET** /site_languages | Read Site Languages
[**read_site_sites_site_id_get**](SiteApi.md#read_site_sites_site_id_get) | **GET** /sites/{site_id} | Read Site
[**read_sites_sites_get**](SiteApi.md#read_sites_sites_get) | **GET** /sites | Read Sites
[**update_site_language_site_languages_site_language_id_patch**](SiteApi.md#update_site_language_site_languages_site_language_id_patch) | **PATCH** /site_languages/{site_language_id} | Update Site Language
[**update_site_sites_site_id_patch**](SiteApi.md#update_site_sites_site_id_patch) | **PATCH** /sites/{site_id} | Update Site

# **create_site_language_site_languages_post**
> SiteLanguageRead create_site_language_site_languages_post(body)

Create Site Language

Create a SiteLanguage.

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
body = swagger_client.SiteLanguageCreate() # SiteLanguageCreate | 

try:
    # Create Site Language
    api_response = api_instance.create_site_language_site_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->create_site_language_site_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageCreate**](SiteLanguageCreate.md)|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_site_sites_post**
> SiteRead create_site_sites_post(body)

Create Site

Create a Site.

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
body = swagger_client.SiteCreate() # SiteCreate | 

try:
    # Create Site
    api_response = api_instance.create_site_sites_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->create_site_sites_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteCreate**](SiteCreate.md)|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_site_language_site_languages_site_language_id_delete**
> SuccessResponseModel delete_site_language_site_languages_site_language_id_delete(site_language_id)

Delete Site Language

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
site_language_id = 56 # int | 

try:
    # Delete Site Language
    api_response = api_instance.delete_site_language_site_languages_site_language_id_delete(site_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->delete_site_language_site_languages_site_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_site_sites_site_id_delete**
> SuccessResponseModel delete_site_sites_site_id_delete(site_id)

Delete Site

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
site_id = 56 # int | 

try:
    # Delete Site
    api_response = api_instance.delete_site_sites_site_id_delete(site_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->delete_site_sites_site_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_site_language_site_languages_site_language_id_get**
> SiteLanguageRead read_site_language_site_languages_site_language_id_get(site_language_id)

Read Site Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_language_id = 56 # int | 

try:
    # Read Site Language
    api_response = api_instance.read_site_language_site_languages_site_language_id_get(site_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->read_site_language_site_languages_site_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_language_id** | **int**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_site_languages_site_languages_get**
> list[SiteLanguageRead] read_site_languages_site_languages_get(q=q, offset=offset, limit=limit)

Read Site Languages

Get all SiteLanguage.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Site Languages
    api_response = api_instance.read_site_languages_site_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->read_site_languages_site_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[SiteLanguageRead]**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_site_sites_site_id_get**
> SiteRead read_site_sites_site_id_get(site_id)

Read Site

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
site_id = 56 # int | 

try:
    # Read Site
    api_response = api_instance.read_site_sites_site_id_get(site_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->read_site_sites_site_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **site_id** | **int**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_sites_sites_get**
> list[SiteRead] read_sites_sites_get(q=q, offset=offset, limit=limit)

Read Sites

Get all Site.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.SiteApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Sites
    api_response = api_instance.read_sites_sites_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->read_sites_sites_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[SiteRead]**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_site_language_site_languages_site_language_id_patch**
> SiteLanguageRead update_site_language_site_languages_site_language_id_patch(body, site_language_id)

Update Site Language

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
body = swagger_client.SiteLanguageUpdate() # SiteLanguageUpdate | 
site_language_id = 56 # int | 

try:
    # Update Site Language
    api_response = api_instance.update_site_language_site_languages_site_language_id_patch(body, site_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->update_site_language_site_languages_site_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageUpdate**](SiteLanguageUpdate.md)|  | 
 **site_language_id** | **int**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_site_sites_site_id_patch**
> SiteRead update_site_sites_site_id_patch(body, site_id)

Update Site

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
api_instance = swagger_client.SiteApi(swagger_client.ApiClient(configuration))
body = swagger_client.SiteUpdate() # SiteUpdate | 
site_id = 56 # int | 

try:
    # Update Site
    api_response = api_instance.update_site_sites_site_id_patch(body, site_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling SiteApi->update_site_sites_site_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteUpdate**](SiteUpdate.md)|  | 
 **site_id** | **int**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

