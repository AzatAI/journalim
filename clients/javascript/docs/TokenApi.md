# JbsBackendService.TokenApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTokenTokenPost**](TokenApi.md#createTokenTokenPost) | **POST** /token | Create Token

<a name="createTokenTokenPost"></a>
# **createTokenTokenPost**
> Token createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret)

Create Token

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.TokenApi();
let grantType = "grantType_example"; // String | 
let username = "username_example"; // String | 
let password = "password_example"; // String | 
let scope = "scope_example"; // String | 
let clientId = "clientId_example"; // String | 
let clientSecret = "clientSecret_example"; // String | 

apiInstance.createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **String**|  | 
 **username** | **String**|  | 
 **password** | **String**|  | 
 **scope** | **String**|  | 
 **clientId** | **String**|  | 
 **clientSecret** | **String**|  | 

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

