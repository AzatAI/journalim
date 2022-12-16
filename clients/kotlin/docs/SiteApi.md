# SiteApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSiteLanguageSiteLanguagesPost**](SiteApi.md#createSiteLanguageSiteLanguagesPost) | **POST** /site_languages | Create Site Language
[**createSiteSitesPost**](SiteApi.md#createSiteSitesPost) | **POST** /sites | Create Site
[**deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete**](SiteApi.md#deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete) | **DELETE** /site_languages/{site_language_id} | Delete Site Language
[**deleteSiteSitesSiteIdDelete**](SiteApi.md#deleteSiteSitesSiteIdDelete) | **DELETE** /sites/{site_id} | Delete Site
[**readSiteLanguageSiteLanguagesSiteLanguageIdGet**](SiteApi.md#readSiteLanguageSiteLanguagesSiteLanguageIdGet) | **GET** /site_languages/{site_language_id} | Read Site Language
[**readSiteLanguagesSiteLanguagesGet**](SiteApi.md#readSiteLanguagesSiteLanguagesGet) | **GET** /site_languages | Read Site Languages
[**readSiteSitesSiteIdGet**](SiteApi.md#readSiteSitesSiteIdGet) | **GET** /sites/{site_id} | Read Site
[**readSitesSitesGet**](SiteApi.md#readSitesSitesGet) | **GET** /sites | Read Sites
[**updateSiteLanguageSiteLanguagesSiteLanguageIdPatch**](SiteApi.md#updateSiteLanguageSiteLanguagesSiteLanguageIdPatch) | **PATCH** /site_languages/{site_language_id} | Update Site Language
[**updateSiteSitesSiteIdPatch**](SiteApi.md#updateSiteSitesSiteIdPatch) | **PATCH** /sites/{site_id} | Update Site

<a name="createSiteLanguageSiteLanguagesPost"></a>
# **createSiteLanguageSiteLanguagesPost**
> SiteLanguageRead createSiteLanguageSiteLanguagesPost(body)

Create Site Language

Create a SiteLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val body : SiteLanguageCreate =  // SiteLanguageCreate | 
try {
    val result : SiteLanguageRead = apiInstance.createSiteLanguageSiteLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#createSiteLanguageSiteLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#createSiteLanguageSiteLanguagesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageCreate**](SiteLanguageCreate.md)|  |

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createSiteSitesPost"></a>
# **createSiteSitesPost**
> SiteRead createSiteSitesPost(body)

Create Site

Create a Site.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val body : SiteCreate =  // SiteCreate | 
try {
    val result : SiteRead = apiInstance.createSiteSitesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#createSiteSitesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#createSiteSitesPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteCreate**](SiteCreate.md)|  |

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete"></a>
# **deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete**
> SuccessResponseModel deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId)

Delete Site Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val siteLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteSiteSitesSiteIdDelete"></a>
# **deleteSiteSitesSiteIdDelete**
> SuccessResponseModel deleteSiteSitesSiteIdDelete(siteId)

Delete Site

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val siteId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteSiteSitesSiteIdDelete(siteId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#deleteSiteSitesSiteIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#deleteSiteSitesSiteIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteLanguageSiteLanguagesSiteLanguageIdGet"></a>
# **readSiteLanguageSiteLanguagesSiteLanguageIdGet**
> SiteLanguageRead readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId)

Read Site Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val siteLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SiteLanguageRead = apiInstance.readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#readSiteLanguageSiteLanguagesSiteLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#readSiteLanguageSiteLanguagesSiteLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **kotlin.Int**|  |

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteLanguagesSiteLanguagesGet"></a>
# **readSiteLanguagesSiteLanguagesGet**
> kotlin.Array&lt;SiteLanguageRead&gt; readSiteLanguagesSiteLanguagesGet(q, offset, limit)

Read Site Languages

Get all SiteLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<SiteLanguageRead> = apiInstance.readSiteLanguagesSiteLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#readSiteLanguagesSiteLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#readSiteLanguagesSiteLanguagesGet")
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

[**kotlin.Array&lt;SiteLanguageRead&gt;**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteSitesSiteIdGet"></a>
# **readSiteSitesSiteIdGet**
> SiteRead readSiteSitesSiteIdGet(siteId)

Read Site

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val siteId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SiteRead = apiInstance.readSiteSitesSiteIdGet(siteId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#readSiteSitesSiteIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#readSiteSitesSiteIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **kotlin.Int**|  |

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSitesSitesGet"></a>
# **readSitesSitesGet**
> kotlin.Array&lt;SiteRead&gt; readSitesSitesGet(q, offset, limit)

Read Sites

Get all Site.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<SiteRead> = apiInstance.readSitesSitesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#readSitesSitesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#readSitesSitesGet")
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

[**kotlin.Array&lt;SiteRead&gt;**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateSiteLanguageSiteLanguagesSiteLanguageIdPatch"></a>
# **updateSiteLanguageSiteLanguagesSiteLanguageIdPatch**
> SiteLanguageRead updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId)

Update Site Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val body : SiteLanguageUpdate =  // SiteLanguageUpdate | 
val siteLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SiteLanguageRead = apiInstance.updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#updateSiteLanguageSiteLanguagesSiteLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#updateSiteLanguageSiteLanguagesSiteLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageUpdate**](SiteLanguageUpdate.md)|  |
 **siteLanguageId** | **kotlin.Int**|  |

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateSiteSitesSiteIdPatch"></a>
# **updateSiteSitesSiteIdPatch**
> SiteRead updateSiteSitesSiteIdPatch(body, siteId)

Update Site

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = SiteApi()
val body : SiteUpdate =  // SiteUpdate | 
val siteId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SiteRead = apiInstance.updateSiteSitesSiteIdPatch(body, siteId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling SiteApi#updateSiteSitesSiteIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling SiteApi#updateSiteSitesSiteIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteUpdate**](SiteUpdate.md)|  |
 **siteId** | **kotlin.Int**|  |

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

