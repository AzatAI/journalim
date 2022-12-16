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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
PageLanguageCreate body = new PageLanguageCreate(); // PageLanguageCreate | 
try {
    PageLanguageRead result = apiInstance.createPageLanguagePageLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#createPageLanguagePageLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
PageCreate body = new PageCreate(); // PageCreate | 
try {
    PageRead result = apiInstance.createPagePagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#createPagePagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
Integer pageLanguageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#deletePageLanguagePageLanguagesPageLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
Integer pageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePagePagesPageIdDelete(pageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#deletePagePagesPageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PageApi;


PageApi apiInstance = new PageApi();
Integer pageLanguageId = 56; // Integer | 
try {
    PageLanguageRead result = apiInstance.readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#readPageLanguagePageLanguagesPageLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **Integer**|  |

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPageLanguagesPageLanguagesGet"></a>
# **readPageLanguagesPageLanguagesGet**
> List&lt;PageLanguageRead&gt; readPageLanguagesPageLanguagesGet(q, offset, limit)

Read Page Languages

Get all PageLanguage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PageApi;


PageApi apiInstance = new PageApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PageLanguageRead> result = apiInstance.readPageLanguagesPageLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#readPageLanguagesPageLanguagesGet");
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

[**List&lt;PageLanguageRead&gt;**](PageLanguageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PageApi;


PageApi apiInstance = new PageApi();
Integer pageId = 56; // Integer | 
try {
    PageRead result = apiInstance.readPagePagesPageIdGet(pageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#readPagePagesPageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **Integer**|  |

### Return type

[**PageRead**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPagesPagesGet"></a>
# **readPagesPagesGet**
> List&lt;PageRead&gt; readPagesPagesGet(q, offset, limit)

Read Pages

Get all Page.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PageApi;


PageApi apiInstance = new PageApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PageRead> result = apiInstance.readPagesPagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#readPagesPagesGet");
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

[**List&lt;PageRead&gt;**](PageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
PageLanguageUpdate body = new PageLanguageUpdate(); // PageLanguageUpdate | 
Integer pageLanguageId = 56; // Integer | 
try {
    PageLanguageRead result = apiInstance.updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#updatePageLanguagePageLanguagesPageLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageUpdate**](PageLanguageUpdate.md)|  |
 **pageLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PageApi apiInstance = new PageApi();
PageUpdate body = new PageUpdate(); // PageUpdate | 
Integer pageId = 56; // Integer | 
try {
    PageRead result = apiInstance.updatePagePagesPageIdPatch(body, pageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PageApi#updatePagePagesPageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageUpdate**](PageUpdate.md)|  |
 **pageId** | **Integer**|  |

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

