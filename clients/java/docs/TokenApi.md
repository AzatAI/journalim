# TokenApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createTokenTokenPost**](TokenApi.md#createTokenTokenPost) | **POST** /token | Create Token

<a name="createTokenTokenPost"></a>
# **createTokenTokenPost**
> Token createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret)

Create Token

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.TokenApi;


TokenApi apiInstance = new TokenApi();
String grantType = "grantType_example"; // String | 
String username = "username_example"; // String | 
String password = "password_example"; // String | 
String scope = "scope_example"; // String | 
String clientId = "clientId_example"; // String | 
String clientSecret = "clientSecret_example"; // String | 
try {
    Token result = apiInstance.createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling TokenApi#createTokenTokenPost");
    e.printStackTrace();
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

