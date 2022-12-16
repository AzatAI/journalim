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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
SiteLanguageCreate body = new SiteLanguageCreate(); // SiteLanguageCreate | 
try {
    SiteLanguageRead result = apiInstance.createSiteLanguageSiteLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#createSiteLanguageSiteLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
SiteCreate body = new SiteCreate(); // SiteCreate | 
try {
    SiteRead result = apiInstance.createSiteSitesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#createSiteSitesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
Integer siteLanguageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
Integer siteId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteSiteSitesSiteIdDelete(siteId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#deleteSiteSitesSiteIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.SiteApi;


SiteApi apiInstance = new SiteApi();
Integer siteLanguageId = 56; // Integer | 
try {
    SiteLanguageRead result = apiInstance.readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#readSiteLanguageSiteLanguagesSiteLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **Integer**|  |

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteLanguagesSiteLanguagesGet"></a>
# **readSiteLanguagesSiteLanguagesGet**
> List&lt;SiteLanguageRead&gt; readSiteLanguagesSiteLanguagesGet(q, offset, limit)

Read Site Languages

Get all SiteLanguage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.SiteApi;


SiteApi apiInstance = new SiteApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<SiteLanguageRead> result = apiInstance.readSiteLanguagesSiteLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#readSiteLanguagesSiteLanguagesGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional]
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]

### Return type

[**List&lt;SiteLanguageRead&gt;**](SiteLanguageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.SiteApi;


SiteApi apiInstance = new SiteApi();
Integer siteId = 56; // Integer | 
try {
    SiteRead result = apiInstance.readSiteSitesSiteIdGet(siteId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#readSiteSitesSiteIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **Integer**|  |

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSitesSitesGet"></a>
# **readSitesSitesGet**
> List&lt;SiteRead&gt; readSitesSitesGet(q, offset, limit)

Read Sites

Get all Site.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.SiteApi;


SiteApi apiInstance = new SiteApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<SiteRead> result = apiInstance.readSitesSitesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#readSitesSitesGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional]
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]

### Return type

[**List&lt;SiteRead&gt;**](SiteRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
SiteLanguageUpdate body = new SiteLanguageUpdate(); // SiteLanguageUpdate | 
Integer siteLanguageId = 56; // Integer | 
try {
    SiteLanguageRead result = apiInstance.updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#updateSiteLanguageSiteLanguagesSiteLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageUpdate**](SiteLanguageUpdate.md)|  |
 **siteLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.SiteApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

SiteApi apiInstance = new SiteApi();
SiteUpdate body = new SiteUpdate(); // SiteUpdate | 
Integer siteId = 56; // Integer | 
try {
    SiteRead result = apiInstance.updateSiteSitesSiteIdPatch(body, siteId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling SiteApi#updateSiteSitesSiteIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteUpdate**](SiteUpdate.md)|  |
 **siteId** | **Integer**|  |

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

