# PublicationApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPublicationLanguagePublicationLanguagesPost**](PublicationApi.md#createPublicationLanguagePublicationLanguagesPost) | **POST** /publication_languages | Create Publication Language
[**createPublicationPublicationsPost**](PublicationApi.md#createPublicationPublicationsPost) | **POST** /publications | Create Publication
[**deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete**](PublicationApi.md#deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete) | **DELETE** /publication_languages/{publication_language_id} | Delete Publication Language
[**deletePublicationPublicationsPublicationIdDelete**](PublicationApi.md#deletePublicationPublicationsPublicationIdDelete) | **DELETE** /publications/{publication_id} | Delete Publication
[**readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet**](PublicationApi.md#readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet) | **GET** /publication_languages/{publication_language_id} | Read Publication Language
[**readPublicationLanguagesPublicationLanguagesGet**](PublicationApi.md#readPublicationLanguagesPublicationLanguagesGet) | **GET** /publication_languages | Read Publication Languages
[**readPublicationPublicationsPublicationIdGet**](PublicationApi.md#readPublicationPublicationsPublicationIdGet) | **GET** /publications/{publication_id} | Read Publication
[**readPublicationsPublicationsGet**](PublicationApi.md#readPublicationsPublicationsGet) | **GET** /publications | Read Publications
[**updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch**](PublicationApi.md#updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch) | **PATCH** /publication_languages/{publication_language_id} | Update Publication Language
[**updatePublicationPublicationsPublicationIdPatch**](PublicationApi.md#updatePublicationPublicationsPublicationIdPatch) | **PATCH** /publications/{publication_id} | Update Publication

<a name="createPublicationLanguagePublicationLanguagesPost"></a>
# **createPublicationLanguagePublicationLanguagesPost**
> PublicationLanguageRead createPublicationLanguagePublicationLanguagesPost(body)

Create Publication Language

Create a PublicationLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val body : PublicationLanguageCreate =  // PublicationLanguageCreate | 
try {
    val result : PublicationLanguageRead = apiInstance.createPublicationLanguagePublicationLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#createPublicationLanguagePublicationLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#createPublicationLanguagePublicationLanguagesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageCreate**](PublicationLanguageCreate.md)|  |

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createPublicationPublicationsPost"></a>
# **createPublicationPublicationsPost**
> PublicationRead createPublicationPublicationsPost(body)

Create Publication

Create a Publication.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val body : PublicationCreate =  // PublicationCreate | 
try {
    val result : PublicationRead = apiInstance.createPublicationPublicationsPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#createPublicationPublicationsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#createPublicationPublicationsPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationCreate**](PublicationCreate.md)|  |

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete"></a>
# **deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete**
> SuccessResponseModel deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId)

Delete Publication Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val publicationLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deletePublicationPublicationsPublicationIdDelete"></a>
# **deletePublicationPublicationsPublicationIdDelete**
> SuccessResponseModel deletePublicationPublicationsPublicationIdDelete(publicationId)

Delete Publication

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val publicationId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePublicationPublicationsPublicationIdDelete(publicationId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#deletePublicationPublicationsPublicationIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#deletePublicationPublicationsPublicationIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet"></a>
# **readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet**
> PublicationLanguageRead readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId)

Read Publication Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val publicationLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PublicationLanguageRead = apiInstance.readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **kotlin.Int**|  |

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationLanguagesPublicationLanguagesGet"></a>
# **readPublicationLanguagesPublicationLanguagesGet**
> kotlin.Array&lt;PublicationLanguageRead&gt; readPublicationLanguagesPublicationLanguagesGet(q, offset, limit)

Read Publication Languages

Get all PublicationLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PublicationLanguageRead> = apiInstance.readPublicationLanguagesPublicationLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#readPublicationLanguagesPublicationLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#readPublicationLanguagesPublicationLanguagesGet")
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

[**kotlin.Array&lt;PublicationLanguageRead&gt;**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationPublicationsPublicationIdGet"></a>
# **readPublicationPublicationsPublicationIdGet**
> PublicationRead readPublicationPublicationsPublicationIdGet(publicationId)

Read Publication

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val publicationId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PublicationRead = apiInstance.readPublicationPublicationsPublicationIdGet(publicationId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#readPublicationPublicationsPublicationIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#readPublicationPublicationsPublicationIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **kotlin.Int**|  |

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationsPublicationsGet"></a>
# **readPublicationsPublicationsGet**
> kotlin.Array&lt;PublicationRead&gt; readPublicationsPublicationsGet(q, offset, limit)

Read Publications

Get all Publication.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PublicationRead> = apiInstance.readPublicationsPublicationsGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#readPublicationsPublicationsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#readPublicationsPublicationsGet")
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

[**kotlin.Array&lt;PublicationRead&gt;**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch"></a>
# **updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch**
> PublicationLanguageRead updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId)

Update Publication Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val body : PublicationLanguageUpdate =  // PublicationLanguageUpdate | 
val publicationLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PublicationLanguageRead = apiInstance.updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageUpdate**](PublicationLanguageUpdate.md)|  |
 **publicationLanguageId** | **kotlin.Int**|  |

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updatePublicationPublicationsPublicationIdPatch"></a>
# **updatePublicationPublicationsPublicationIdPatch**
> PublicationRead updatePublicationPublicationsPublicationIdPatch(body, publicationId)

Update Publication

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PublicationApi()
val body : PublicationUpdate =  // PublicationUpdate | 
val publicationId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PublicationRead = apiInstance.updatePublicationPublicationsPublicationIdPatch(body, publicationId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PublicationApi#updatePublicationPublicationsPublicationIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PublicationApi#updatePublicationPublicationsPublicationIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationUpdate**](PublicationUpdate.md)|  |
 **publicationId** | **kotlin.Int**|  |

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

