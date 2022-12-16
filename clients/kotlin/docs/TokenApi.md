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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TokenApi()
val grantType : kotlin.String = grantType_example // kotlin.String | 
val username : kotlin.String = username_example // kotlin.String | 
val password : kotlin.String = password_example // kotlin.String | 
val scope : kotlin.String = scope_example // kotlin.String | 
val clientId : kotlin.String = clientId_example // kotlin.String | 
val clientSecret : kotlin.String = clientSecret_example // kotlin.String | 
try {
    val result : Token = apiInstance.createTokenTokenPost(grantType, username, password, scope, clientId, clientSecret)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TokenApi#createTokenTokenPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TokenApi#createTokenTokenPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **grantType** | **kotlin.String**|  |
 **username** | **kotlin.String**|  |
 **password** | **kotlin.String**|  |
 **scope** | **kotlin.String**|  |
 **clientId** | **kotlin.String**|  |
 **clientSecret** | **kotlin.String**|  |

### Return type

[**Token**](Token.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

