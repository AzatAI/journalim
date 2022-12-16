# swagger_client.IssueApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_issue_issues_post**](IssueApi.md#create_issue_issues_post) | **POST** /issues | Create Issue
[**create_issue_language_issue_languages_post**](IssueApi.md#create_issue_language_issue_languages_post) | **POST** /issue_languages | Create Issue Language
[**delete_issue_issues_issue_id_delete**](IssueApi.md#delete_issue_issues_issue_id_delete) | **DELETE** /issues/{issue_id} | Delete Issue
[**delete_issue_language_issue_languages_issue_language_id_delete**](IssueApi.md#delete_issue_language_issue_languages_issue_language_id_delete) | **DELETE** /issue_languages/{issue_language_id} | Delete Issue Language
[**read_issue_issues_issue_id_get**](IssueApi.md#read_issue_issues_issue_id_get) | **GET** /issues/{issue_id} | Read Issue
[**read_issue_language_issue_languages_issue_language_id_get**](IssueApi.md#read_issue_language_issue_languages_issue_language_id_get) | **GET** /issue_languages/{issue_language_id} | Read Issue Language
[**read_issue_languages_issue_languages_get**](IssueApi.md#read_issue_languages_issue_languages_get) | **GET** /issue_languages | Read Issue Languages
[**read_issues_issues_get**](IssueApi.md#read_issues_issues_get) | **GET** /issues | Read Issues
[**update_issue_issues_issue_id_patch**](IssueApi.md#update_issue_issues_issue_id_patch) | **PATCH** /issues/{issue_id} | Update Issue
[**update_issue_language_issue_languages_issue_language_id_patch**](IssueApi.md#update_issue_language_issue_languages_issue_language_id_patch) | **PATCH** /issue_languages/{issue_language_id} | Update Issue Language

# **create_issue_issues_post**
> IssueRead create_issue_issues_post(body)

Create Issue

Create an Issue.

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
body = swagger_client.IssueCreate() # IssueCreate | 

try:
    # Create Issue
    api_response = api_instance.create_issue_issues_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->create_issue_issues_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueCreate**](IssueCreate.md)|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_issue_language_issue_languages_post**
> IssueLanguageRead create_issue_language_issue_languages_post(body)

Create Issue Language

Create a IssueLanguage.

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
body = swagger_client.IssueLanguageCreate() # IssueLanguageCreate | 

try:
    # Create Issue Language
    api_response = api_instance.create_issue_language_issue_languages_post(body)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->create_issue_language_issue_languages_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueLanguageCreate**](IssueLanguageCreate.md)|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_issue_issues_issue_id_delete**
> SuccessResponseModel delete_issue_issues_issue_id_delete(issue_id)

Delete Issue

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
issue_id = 56 # int | 

try:
    # Delete Issue
    api_response = api_instance.delete_issue_issues_issue_id_delete(issue_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->delete_issue_issues_issue_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **delete_issue_language_issue_languages_issue_language_id_delete**
> SuccessResponseModel delete_issue_language_issue_languages_issue_language_id_delete(issue_language_id)

Delete Issue Language

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
issue_language_id = 56 # int | 

try:
    # Delete Issue Language
    api_response = api_instance.delete_issue_language_issue_languages_issue_language_id_delete(issue_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->delete_issue_language_issue_languages_issue_language_id_delete: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_language_id** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_issue_issues_issue_id_get**
> IssueRead read_issue_issues_issue_id_get(issue_id)

Read Issue

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.IssueApi()
issue_id = 56 # int | 

try:
    # Read Issue
    api_response = api_instance.read_issue_issues_issue_id_get(issue_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->read_issue_issues_issue_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_id** | **int**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_issue_language_issue_languages_issue_language_id_get**
> IssueLanguageRead read_issue_language_issue_languages_issue_language_id_get(issue_language_id)

Read Issue Language

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.IssueApi()
issue_language_id = 56 # int | 

try:
    # Read Issue Language
    api_response = api_instance.read_issue_language_issue_languages_issue_language_id_get(issue_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->read_issue_language_issue_languages_issue_language_id_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issue_language_id** | **int**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_issue_languages_issue_languages_get**
> list[IssueLanguageRead] read_issue_languages_issue_languages_get(q=q, offset=offset, limit=limit)

Read Issue Languages

Get all IssueLanguage.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.IssueApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Issue Languages
    api_response = api_instance.read_issue_languages_issue_languages_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->read_issue_languages_issue_languages_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[IssueLanguageRead]**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **read_issues_issues_get**
> list[IssueRead] read_issues_issues_get(q=q, offset=offset, limit=limit)

Read Issues

Get all Issue.

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.IssueApi()
q = 'q_example' # str |  (optional)
offset = 0 # int |  (optional) (default to 0)
limit = 100 # int |  (optional) (default to 100)

try:
    # Read Issues
    api_response = api_instance.read_issues_issues_get(q=q, offset=offset, limit=limit)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->read_issues_issues_get: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **str**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**list[IssueRead]**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_issue_issues_issue_id_patch**
> IssueRead update_issue_issues_issue_id_patch(body, issue_id)

Update Issue

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
body = swagger_client.IssueUpdate() # IssueUpdate | 
issue_id = 56 # int | 

try:
    # Update Issue
    api_response = api_instance.update_issue_issues_issue_id_patch(body, issue_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->update_issue_issues_issue_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueUpdate**](IssueUpdate.md)|  | 
 **issue_id** | **int**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_issue_language_issue_languages_issue_language_id_patch**
> IssueLanguageRead update_issue_language_issue_languages_issue_language_id_patch(body, issue_language_id)

Update Issue Language

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
api_instance = swagger_client.IssueApi(swagger_client.ApiClient(configuration))
body = swagger_client.IssueLanguageUpdate() # IssueLanguageUpdate | 
issue_language_id = 56 # int | 

try:
    # Update Issue Language
    api_response = api_instance.update_issue_language_issue_languages_issue_language_id_patch(body, issue_language_id)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling IssueApi->update_issue_language_issue_languages_issue_language_id_patch: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueLanguageUpdate**](IssueLanguageUpdate.md)|  | 
 **issue_language_id** | **int**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

