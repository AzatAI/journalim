# LanguageApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLanguageLanguagesPost**](LanguageApi.md#createLanguageLanguagesPost) | **POST** /languages | Create Language
[**deleteLanguageLanguagesLanguageIdDelete**](LanguageApi.md#deleteLanguageLanguagesLanguageIdDelete) | **DELETE** /languages/{language_id} | Delete Language
[**readLanguageLanguagesLanguageIdGet**](LanguageApi.md#readLanguageLanguagesLanguageIdGet) | **GET** /languages/{language_id} | Read Language
[**readLanguagesLanguagesGet**](LanguageApi.md#readLanguagesLanguagesGet) | **GET** /languages | Read Languages
[**updateLanguageLanguagesLanguageIdPatch**](LanguageApi.md#updateLanguageLanguagesLanguageIdPatch) | **PATCH** /languages/{language_id} | Update Language

<a name="createLanguageLanguagesPost"></a>
# **createLanguageLanguagesPost**
> LanguageRead createLanguageLanguagesPost(body)

Create Language

Create a Language.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = LanguageApi()
val body : LanguageCreate =  // LanguageCreate | 
try {
    val result : LanguageRead = apiInstance.createLanguageLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LanguageApi#createLanguageLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LanguageApi#createLanguageLanguagesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageCreate**](LanguageCreate.md)|  |

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteLanguageLanguagesLanguageIdDelete"></a>
# **deleteLanguageLanguagesLanguageIdDelete**
> SuccessResponseModel deleteLanguageLanguagesLanguageIdDelete(languageId)

Delete Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = LanguageApi()
val languageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteLanguageLanguagesLanguageIdDelete(languageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LanguageApi#deleteLanguageLanguagesLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LanguageApi#deleteLanguageLanguagesLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readLanguageLanguagesLanguageIdGet"></a>
# **readLanguageLanguagesLanguageIdGet**
> LanguageRead readLanguageLanguagesLanguageIdGet(languageId)

Read Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = LanguageApi()
val languageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : LanguageRead = apiInstance.readLanguageLanguagesLanguageIdGet(languageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LanguageApi#readLanguageLanguagesLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LanguageApi#readLanguageLanguagesLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **kotlin.Int**|  |

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readLanguagesLanguagesGet"></a>
# **readLanguagesLanguagesGet**
> kotlin.Array&lt;LanguageRead&gt; readLanguagesLanguagesGet(q, offset, limit)

Read Languages

Get all Language.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = LanguageApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<LanguageRead> = apiInstance.readLanguagesLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LanguageApi#readLanguagesLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LanguageApi#readLanguagesLanguagesGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**|  | [optional]
 **offset** | **kotlin.Int**|  | [optional] [default to 0]
 **limit** | **kotlin.Int**|  | [optional] [default to 100]

### Return type

[**kotlin.Array&lt;LanguageRead&gt;**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateLanguageLanguagesLanguageIdPatch"></a>
# **updateLanguageLanguagesLanguageIdPatch**
> LanguageRead updateLanguageLanguagesLanguageIdPatch(body, languageId)

Update Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = LanguageApi()
val body : LanguageUpdate =  // LanguageUpdate | 
val languageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : LanguageRead = apiInstance.updateLanguageLanguagesLanguageIdPatch(body, languageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling LanguageApi#updateLanguageLanguagesLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling LanguageApi#updateLanguageLanguagesLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageUpdate**](LanguageUpdate.md)|  |
 **languageId** | **kotlin.Int**|  |

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

