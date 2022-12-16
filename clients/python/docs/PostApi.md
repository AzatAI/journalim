# swagger_client.PostApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_post_language_post_languages_post**](PostApi.md#create_post_language_post_languages_post) | **POST** /post_languages | Create Post Language
[**create_post_posts_post**](PostApi.md#create_post_posts_post) | **POST** /posts | Create Post
[**delete_post_language_post_languages_post_language_id_delete**](PostApi.md#delete_post_language_post_languages_post_language_id_delete) | **DELETE** /post_languages/{post_language_id} | Delete Post Language
[**delete_post_posts_post_id_delete**](PostApi.md#delete_post_posts_post_id_delete) | **DELETE** /posts/{post_id} | Delete Post
[**read_post_language_post_languages_post_language_id_get**](PostApi.md#read_post_language_post_languages_post_language_id_get) | **GET** /post_languages/{post_language_id} | Read Post Language
[**read_post_languages_post_languages_get**](PostApi.md#read_post_languages_post_languages_get) | **GET** /post_languages | Read Post Languages
[**read_post_posts_post_id_get**](PostApi.md#read_post_posts_post_id_get) | **GET** /posts/{post_id} | Read Post
[**read_posts_posts_get**](PostApi.md#read_posts_posts_get) | **GET** /posts | Read Posts
[**update_post_language_post_languages_post_language_id_patch**](PostApi.md#update_post_language_post_languages_post_language_id_patch) | **PATCH** /post_languages/{post_language_id} | Update Post Language
[**update_post_posts_post_id_patch**](PostApi.md#update_post_posts_post_id_patch) | **PATCH** /posts/{post_id} | Update Post

# **create_post_language_post_languages_post**
> PostLanguageRead create_post_language_post_languages_post(body)

Create Post Language

Create a PostLanguage.

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
body = swagger_client.PostLanguageCreate() # PostLanguageCreate | 

try:
    # Create Post Language
    api_response = api_instance.create_post_language_post_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->create_post_language_post_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageCreate**](PostLanguageCreate.md)|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_post_posts_post**
> PostRead create_post_posts_post(body)

Create Post

Create a Post.

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
body = swagger_client.PostCreate() # PostCreate | 

try:
    # Create Post
    api_response = api_instance.create_post_posts_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->create_post_posts_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostCreate**](PostCreate.md)|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_post_language_post_languages_post_language_id_delete**
> SuccessResponseModel delete_post_language_post_languages_post_language_id_delete(post_language_id)

Delete Post Language

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
post_language_id = 56 # int | 

try:
    # Delete Post Language
    api_response = api_instance.delete_post_language_post_languages_post_language_id_delete(post_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->delete_post_language_post_languages_post_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_post_posts_post_id_delete**
> SuccessResponseModel delete_post_posts_post_id_delete(post_id)

Delete Post

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
post_id = 56 # int | 

try:
    # Delete Post
    api_response = api_instance.delete_post_posts_post_id_delete(post_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->delete_post_posts_post_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_post_language_post_languages_post_language_id_get**
> PostLanguageRead read_post_language_post_languages_post_language_id_get(post_language_id)

Read Post Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PostApi()
post_language_id = 56 # int | 

try:
    # Read Post Language
    api_response = api_instance.read_post_language_post_languages_post_language_id_get(post_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->read_post_language_post_languages_post_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_language_id** | **int**|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_post_languages_post_languages_get**
> list[PostLanguageRead] read_post_languages_post_languages_get(q=q, offset=offset, limit=limit)

Read Post Languages

Get all PostLanguage.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PostApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Post Languages
    api_response = api_instance.read_post_languages_post_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->read_post_languages_post_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PostLanguageRead]**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_post_posts_post_id_get**
> PostRead read_post_posts_post_id_get(post_id)

Read Post

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PostApi()
post_id = 56 # int | 

try:
    # Read Post
    api_response = api_instance.read_post_posts_post_id_get(post_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->read_post_posts_post_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_id** | **int**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_posts_posts_get**
> list[PostRead] read_posts_posts_get(q=q, offset=offset, limit=limit)

Read Posts

Get all Post.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.PostApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Posts
    api_response = api_instance.read_posts_posts_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->read_posts_posts_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[PostRead]**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_post_language_post_languages_post_language_id_patch**
> PostLanguageRead update_post_language_post_languages_post_language_id_patch(body, post_language_id)

Update Post Language

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
body = swagger_client.PostLanguageUpdate() # PostLanguageUpdate | 
post_language_id = 56 # int | 

try:
    # Update Post Language
    api_response = api_instance.update_post_language_post_languages_post_language_id_patch(body, post_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->update_post_language_post_languages_post_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageUpdate**](PostLanguageUpdate.md)|  | 
 **post_language_id** | **int**|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_post_posts_post_id_patch**
> PostRead update_post_posts_post_id_patch(body, post_id)

Update Post

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
api_instance = swagger_client.PostApi(swagger_client.ApiClient(configuration))
body = swagger_client.PostUpdate() # PostUpdate | 
post_id = 56 # int | 

try:
    # Update Post
    api_response = api_instance.update_post_posts_post_id_patch(body, post_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling PostApi->update_post_posts_post_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostUpdate**](PostUpdate.md)|  | 
 **post_id** | **int**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

