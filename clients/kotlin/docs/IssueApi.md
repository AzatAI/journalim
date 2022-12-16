# IssueApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIssueIssuesPost**](IssueApi.md#createIssueIssuesPost) | **POST** /issues | Create Issue
[**createIssueLanguageIssueLanguagesPost**](IssueApi.md#createIssueLanguageIssueLanguagesPost) | **POST** /issue_languages | Create Issue Language
[**deleteIssueIssuesIssueIdDelete**](IssueApi.md#deleteIssueIssuesIssueIdDelete) | **DELETE** /issues/{issue_id} | Delete Issue
[**deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete**](IssueApi.md#deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete) | **DELETE** /issue_languages/{issue_language_id} | Delete Issue Language
[**readIssueIssuesIssueIdGet**](IssueApi.md#readIssueIssuesIssueIdGet) | **GET** /issues/{issue_id} | Read Issue
[**readIssueLanguageIssueLanguagesIssueLanguageIdGet**](IssueApi.md#readIssueLanguageIssueLanguagesIssueLanguageIdGet) | **GET** /issue_languages/{issue_language_id} | Read Issue Language
[**readIssueLanguagesIssueLanguagesGet**](IssueApi.md#readIssueLanguagesIssueLanguagesGet) | **GET** /issue_languages | Read Issue Languages
[**readIssuesIssuesGet**](IssueApi.md#readIssuesIssuesGet) | **GET** /issues | Read Issues
[**updateIssueIssuesIssueIdPatch**](IssueApi.md#updateIssueIssuesIssueIdPatch) | **PATCH** /issues/{issue_id} | Update Issue
[**updateIssueLanguageIssueLanguagesIssueLanguageIdPatch**](IssueApi.md#updateIssueLanguageIssueLanguagesIssueLanguageIdPatch) | **PATCH** /issue_languages/{issue_language_id} | Update Issue Language

<a name="createIssueIssuesPost"></a>
# **createIssueIssuesPost**
> IssueRead createIssueIssuesPost(body)

Create Issue

Create an Issue.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val body : IssueCreate =  // IssueCreate | 
try {
    val result : IssueRead = apiInstance.createIssueIssuesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#createIssueIssuesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#createIssueIssuesPost")
    e.printStackTrace()
}
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

<a name="createIssueLanguageIssueLanguagesPost"></a>
# **createIssueLanguageIssueLanguagesPost**
> IssueLanguageRead createIssueLanguageIssueLanguagesPost(body)

Create Issue Language

Create a IssueLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val body : IssueLanguageCreate =  // IssueLanguageCreate | 
try {
    val result : IssueLanguageRead = apiInstance.createIssueLanguageIssueLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#createIssueLanguageIssueLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#createIssueLanguageIssueLanguagesPost")
    e.printStackTrace()
}
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

<a name="deleteIssueIssuesIssueIdDelete"></a>
# **deleteIssueIssuesIssueIdDelete**
> SuccessResponseModel deleteIssueIssuesIssueIdDelete(issueId)

Delete Issue

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val issueId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteIssueIssuesIssueIdDelete(issueId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#deleteIssueIssuesIssueIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#deleteIssueIssuesIssueIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete"></a>
# **deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete**
> SuccessResponseModel deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId)

Delete Issue Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val issueLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueIssuesIssueIdGet"></a>
# **readIssueIssuesIssueIdGet**
> IssueRead readIssueIssuesIssueIdGet(issueId)

Read Issue

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val issueId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : IssueRead = apiInstance.readIssueIssuesIssueIdGet(issueId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#readIssueIssuesIssueIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#readIssueIssuesIssueIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **kotlin.Int**|  |

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueLanguageIssueLanguagesIssueLanguageIdGet"></a>
# **readIssueLanguageIssueLanguagesIssueLanguageIdGet**
> IssueLanguageRead readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId)

Read Issue Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val issueLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : IssueLanguageRead = apiInstance.readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#readIssueLanguageIssueLanguagesIssueLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#readIssueLanguageIssueLanguagesIssueLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **kotlin.Int**|  |

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueLanguagesIssueLanguagesGet"></a>
# **readIssueLanguagesIssueLanguagesGet**
> kotlin.Array&lt;IssueLanguageRead&gt; readIssueLanguagesIssueLanguagesGet(q, offset, limit)

Read Issue Languages

Get all IssueLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<IssueLanguageRead> = apiInstance.readIssueLanguagesIssueLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#readIssueLanguagesIssueLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#readIssueLanguagesIssueLanguagesGet")
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

[**kotlin.Array&lt;IssueLanguageRead&gt;**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssuesIssuesGet"></a>
# **readIssuesIssuesGet**
> kotlin.Array&lt;IssueRead&gt; readIssuesIssuesGet(q, offset, limit)

Read Issues

Get all Issue.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<IssueRead> = apiInstance.readIssuesIssuesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#readIssuesIssuesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#readIssuesIssuesGet")
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

[**kotlin.Array&lt;IssueRead&gt;**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateIssueIssuesIssueIdPatch"></a>
# **updateIssueIssuesIssueIdPatch**
> IssueRead updateIssueIssuesIssueIdPatch(body, issueId)

Update Issue

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val body : IssueUpdate =  // IssueUpdate | 
val issueId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : IssueRead = apiInstance.updateIssueIssuesIssueIdPatch(body, issueId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#updateIssueIssuesIssueIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#updateIssueIssuesIssueIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueUpdate**](IssueUpdate.md)|  |
 **issueId** | **kotlin.Int**|  |

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateIssueLanguageIssueLanguagesIssueLanguageIdPatch"></a>
# **updateIssueLanguageIssueLanguagesIssueLanguageIdPatch**
> IssueLanguageRead updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId)

Update Issue Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = IssueApi()
val body : IssueLanguageUpdate =  // IssueLanguageUpdate | 
val issueLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : IssueLanguageRead = apiInstance.updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling IssueApi#updateIssueLanguageIssueLanguagesIssueLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling IssueApi#updateIssueLanguageIssueLanguagesIssueLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueLanguageUpdate**](IssueLanguageUpdate.md)|  |
 **issueLanguageId** | **kotlin.Int**|  |

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

