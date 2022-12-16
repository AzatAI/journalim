# swagger.api.TokenApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTokenTokenPost**](TokenApi.md#createTokenTokenPost) | **POST** /token | Create Token

# **createTokenTokenPost**
> Token createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret)

Create Token

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new TokenApi();
var grantType = grantType_example; // String | 
var username = username_example; // String | 
var password = password_example; // String | 
var scope = scope_example; // String | 
var clientId = clientId_example; // String | 
var clientSecret = clientSecret_example; // String | 

try {
    var result = api_instance.createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret);
    print(result);
} catch (e) {
    print("Exception when calling TokenApi->createTokenTokenPost: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

