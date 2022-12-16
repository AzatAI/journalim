# swagger_client.TokenApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_token_token_post**](TokenApi.md#create_token_token_post) | **POST** /token | Create Token

# **create_token_token_post**
> Token create_token_token_post(grant_type, username, password, scope, client_id, client_secret)

Create Token

### Example
```python
from __future__ import print_function
import time
import swagger_client
from swagger_client.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = swagger_client.TokenApi()
grant_type = 'grant_type_example' # str | 
username = 'username_example' # str | 
password = 'password_example' # str | 
scope = 'scope_example' # str | 
client_id = 'client_id_example' # str | 
client_secret = 'client_secret_example' # str | 

try:
    # Create Token
    api_response = api_instance.create_token_token_post(grant_type, username, password, scope, client_id, client_secret)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling TokenApi->create_token_token_post: %s\n" % e)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grant_type** | **str**|  | 
 **username** | **str**|  | 
 **password** | **str**|  | 
 **scope** | **str**|  | 
 **client_id** | **str**|  | 
 **client_secret** | **str**|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

