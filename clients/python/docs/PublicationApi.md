# swagger_client.PublicationApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_publication_language_publication_languages_post**](PublicationApi.md#create_publication_language_publication_languages_post) | **POST** /publication_languages | Create Publication Language
[**create_publication_publications_post**](PublicationApi.md#create_publication_publications_post) | **POST** /publications | Create Publication
[**delete_publication_language_publication_languages_publication_language_id_delete**](PublicationApi.md#delete_publication_language_publication_languages_publication_language_id_delete) | **DELETE** /publication_languages/{publication_language_id} | Delete Publication Language
[**delete_publication_publications_publication_id_delete**](PublicationApi.md#delete_publication_publications_publication_id_delete) | **DELETE** /publications/{publication_id} | Delete Publication
[**read_publication_language_publication_languages_publication_language_id_get**](PublicationApi.md#read_publication_language_publication_languages_publication_language_id_get) | **GET** /publication_languages/{publication_language_id} | Read Publication Language
[**read_publication_languages_publication_languages_get**](PublicationApi.md#read_publication_languages_publication_languages_get) | **GET** /publication_languages | Read Publication Languages
[**read_publication_publications_publication_id_get**](PublicationApi.md#read_publication_publications_publication_id_get) | **GET** /publications/{publication_id} | Read Publication
[**read_publications_publications_get**](PublicationApi.md#read_publications_publications_get) | **GET** /publications | Read Publications
[**update_publication_language_publication_languages_publication_language_id_patch**](PublicationApi.md#update_publication_language_publication_languages_publication_language_id_patch) | **PATCH** /publication_languages/{publication_language_id} | Update Publication Language
[**update_publication_publications_publication_id_patch**](PublicationApi.md#update_publication_publications_publication_id_patch) | **PATCH** /publications/{publication_id} | Update Publication

# **create_publication_language_publication_languages_post**
> PublicationLanguageRead create_publication_language_publication_languages_post(body)

Create Publication Language

Create a PublicationLanguage.

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
body = swagger_client.PublicationLanguageCreate() # PublicationLanguageCreate | 

try:
    # Create Publication Language
    api_response = api_instance.create_publication_language_publication_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->create_publication_language_publication_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageCreate**](PublicationLanguageCreate.md)|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_publication_publications_post**
> PublicationRead create_publication_publications_post(body)

Create Publication

Create a Publication.

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
body = swagger_client.PublicationCreate() # PublicationCreate | 

try:
    # Create Publication
    api_response = api_instance.create_publication_publications_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->create_publication_publications_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationCreate**](PublicationCreate.md)|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_publication_language_publication_languages_publication_language_id_delete**
> SuccessResponseModel delete_publication_language_publication_languages_publication_language_id_delete(publication_language_id)

Delete Publication Language

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
publication_language_id = 56 # int | 

try:
    # Delete Publication Language
    api_response = api_instance.delete_publication_language_publication_languages_publication_language_id_delete(publication_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->delete_publication_language_publication_languages_publication_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publication_language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_publication_publications_publication_id_delete**
> SuccessResponseModel delete_publication_publications_publication_id_delete(publication_id)

Delete Publication

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
publication_id = 56 # int | 

try:
    # Delete Publication
    api_response = api_instance.delete_publication_publications_publication_id_delete(publication_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->delete_publication_publications_publication_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publication_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_publication_language_publication_languages_publication_language_id_get**
> PublicationLanguageRead read_publication_language_publication_languages_publication_language_id_get(publication_language_id)

Read Publication Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PublicationApi()
publication_language_id = 56 # int | 

try:
    # Read Publication Language
    api_response = api_instance.read_publication_language_publication_languages_publication_language_id_get(publication_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->read_publication_language_publication_languages_publication_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publication_language_id** | **int**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_publication_languages_publication_languages_get**
> list[PublicationLanguageRead] read_publication_languages_publication_languages_get(q=q, offset=offset, limit=limit)

Read Publication Languages

Get all PublicationLanguage.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PublicationApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Publication Languages
    api_response = api_instance.read_publication_languages_publication_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->read_publication_languages_publication_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PublicationLanguageRead]**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_publication_publications_publication_id_get**
> PublicationRead read_publication_publications_publication_id_get(publication_id)

Read Publication

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PublicationApi()
publication_id = 56 # int | 

try:
    # Read Publication
    api_response = api_instance.read_publication_publications_publication_id_get(publication_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->read_publication_publications_publication_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publication_id** | **int**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_publications_publications_get**
> list[PublicationRead] read_publications_publications_get(q=q, offset=offset, limit=limit)

Read Publications

Get all Publication.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PublicationApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Publications
    api_response = api_instance.read_publications_publications_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->read_publications_publications_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PublicationRead]**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_publication_language_publication_languages_publication_language_id_patch**
> PublicationLanguageRead update_publication_language_publication_languages_publication_language_id_patch(body, publication_language_id)

Update Publication Language

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
body = swagger_client.PublicationLanguageUpdate() # PublicationLanguageUpdate | 
publication_language_id = 56 # int | 

try:
    # Update Publication Language
    api_response = api_instance.update_publication_language_publication_languages_publication_language_id_patch(body, publication_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->update_publication_language_publication_languages_publication_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageUpdate**](PublicationLanguageUpdate.md)|  | 
 **publication_language_id** | **int**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_publication_publications_publication_id_patch**
> PublicationRead update_publication_publications_publication_id_patch(body, publication_id)

Update Publication

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
api_instance = swagger_client.PublicationApi(swagger_client.ApiClient(configuration))
body = swagger_client.PublicationUpdate() # PublicationUpdate | 
publication_id = 56 # int | 

try:
    # Update Publication
    api_response = api_instance.update_publication_publications_publication_id_patch(body, publication_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PublicationApi->update_publication_publications_publication_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationUpdate**](PublicationUpdate.md)|  | 
 **publication_id** | **int**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

