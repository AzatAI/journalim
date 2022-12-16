# PageApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPageLanguagePageLanguagesPost**](PageApi.md#createPageLanguagePageLanguagesPost) | **POST** /page_languages | Create Page Language
[**createPagePagesPost**](PageApi.md#createPagePagesPost) | **POST** /pages | Create Page
[**deletePageLanguagePageLanguagesPageLanguageIdDelete**](PageApi.md#deletePageLanguagePageLanguagesPageLanguageIdDelete) | **DELETE** /page_languages/{page_language_id} | Delete Page Language
[**deletePagePagesPageIdDelete**](PageApi.md#deletePagePagesPageIdDelete) | **DELETE** /pages/{page_id} | Delete Page
[**readPageLanguagePageLanguagesPageLanguageIdGet**](PageApi.md#readPageLanguagePageLanguagesPageLanguageIdGet) | **GET** /page_languages/{page_language_id} | Read Page Language
[**readPageLanguagesPageLanguagesGet**](PageApi.md#readPageLanguagesPageLanguagesGet) | **GET** /page_languages | Read Page Languages
[**readPagePagesPageIdGet**](PageApi.md#readPagePagesPageIdGet) | **GET** /pages/{page_id} | Read Page
[**readPagesPagesGet**](PageApi.md#readPagesPagesGet) | **GET** /pages | Read Pages
[**updatePageLanguagePageLanguagesPageLanguageIdPatch**](PageApi.md#updatePageLanguagePageLanguagesPageLanguageIdPatch) | **PATCH** /page_languages/{page_language_id} | Update Page Language
[**updatePagePagesPageIdPatch**](PageApi.md#updatePagePagesPageIdPatch) | **PATCH** /pages/{page_id} | Update Page

<a name="createPageLanguagePageLanguagesPost"></a>
# **createPageLanguagePageLanguagesPost**
> PageLanguageRead createPageLanguagePageLanguagesPost(body)

Create Page Language

Create a PageLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val body : PageLanguageCreate =  // PageLanguageCreate | 
try {
    val result : PageLanguageRead = apiInstance.createPageLanguagePageLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#createPageLanguagePageLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#createPageLanguagePageLanguagesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageCreate**](PageLanguageCreate.md)|  |

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createPagePagesPost"></a>
# **createPagePagesPost**
> PageRead createPagePagesPost(body)

Create Page

Create a Page.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val body : PageCreate =  // PageCreate | 
try {
    val result : PageRead = apiInstance.createPagePagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#createPagePagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#createPagePagesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageCreate**](PageCreate.md)|  |

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageLanguagePageLanguagesPageLanguageIdDelete"></a>
# **deletePageLanguagePageLanguagesPageLanguageIdDelete**
> SuccessResponseModel deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId)

Delete Page Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val pageLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#deletePageLanguagePageLanguagesPageLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#deletePageLanguagePageLanguagesPageLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deletePagePagesPageIdDelete"></a>
# **deletePagePagesPageIdDelete**
> SuccessResponseModel deletePagePagesPageIdDelete(pageId)

Delete Page

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val pageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePagePagesPageIdDelete(pageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#deletePagePagesPageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#deletePagePagesPageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPageLanguagePageLanguagesPageLanguageIdGet"></a>
# **readPageLanguagePageLanguagesPageLanguageIdGet**
> PageLanguageRead readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId)

Read Page Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val pageLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PageLanguageRead = apiInstance.readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#readPageLanguagePageLanguagesPageLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#readPageLanguagePageLanguagesPageLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **kotlin.Int**|  |

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPageLanguagesPageLanguagesGet"></a>
# **readPageLanguagesPageLanguagesGet**
> kotlin.Array&lt;PageLanguageRead&gt; readPageLanguagesPageLanguagesGet(q, offset, limit)

Read Page Languages

Get all PageLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PageLanguageRead> = apiInstance.readPageLanguagesPageLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#readPageLanguagesPageLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#readPageLanguagesPageLanguagesGet")
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

[**kotlin.Array&lt;PageLanguageRead&gt;**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPagePagesPageIdGet"></a>
# **readPagePagesPageIdGet**
> PageRead readPagePagesPageIdGet(pageId)

Read Page

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val pageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PageRead = apiInstance.readPagePagesPageIdGet(pageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#readPagePagesPageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#readPagePagesPageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **kotlin.Int**|  |

### Return type

[**PageRead**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPagesPagesGet"></a>
# **readPagesPagesGet**
> kotlin.Array&lt;PageRead&gt; readPagesPagesGet(q, offset, limit)

Read Pages

Get all Page.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PageRead> = apiInstance.readPagesPagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#readPagesPagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#readPagesPagesGet")
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

[**kotlin.Array&lt;PageRead&gt;**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updatePageLanguagePageLanguagesPageLanguageIdPatch"></a>
# **updatePageLanguagePageLanguagesPageLanguageIdPatch**
> PageLanguageRead updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId)

Update Page Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val body : PageLanguageUpdate =  // PageLanguageUpdate | 
val pageLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PageLanguageRead = apiInstance.updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#updatePageLanguagePageLanguagesPageLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#updatePageLanguagePageLanguagesPageLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageUpdate**](PageLanguageUpdate.md)|  |
 **pageLanguageId** | **kotlin.Int**|  |

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updatePagePagesPageIdPatch"></a>
# **updatePagePagesPageIdPatch**
> PageRead updatePagePagesPageIdPatch(body, pageId)

Update Page

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PageApi()
val body : PageUpdate =  // PageUpdate | 
val pageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PageRead = apiInstance.updatePagePagesPageIdPatch(body, pageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PageApi#updatePagePagesPageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PageApi#updatePagePagesPageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageUpdate**](PageUpdate.md)|  |
 **pageId** | **kotlin.Int**|  |

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

