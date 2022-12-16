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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
PublicationLanguageCreate body = new PublicationLanguageCreate(); // PublicationLanguageCreate | 
try {
    PublicationLanguageRead result = apiInstance.createPublicationLanguagePublicationLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#createPublicationLanguagePublicationLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
PublicationCreate body = new PublicationCreate(); // PublicationCreate | 
try {
    PublicationRead result = apiInstance.createPublicationPublicationsPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#createPublicationPublicationsPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
Integer publicationLanguageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
Integer publicationId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePublicationPublicationsPublicationIdDelete(publicationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#deletePublicationPublicationsPublicationIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PublicationApi;


PublicationApi apiInstance = new PublicationApi();
Integer publicationLanguageId = 56; // Integer | 
try {
    PublicationLanguageRead result = apiInstance.readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **Integer**|  |

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationLanguagesPublicationLanguagesGet"></a>
# **readPublicationLanguagesPublicationLanguagesGet**
> List&lt;PublicationLanguageRead&gt; readPublicationLanguagesPublicationLanguagesGet(q, offset, limit)

Read Publication Languages

Get all PublicationLanguage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PublicationApi;


PublicationApi apiInstance = new PublicationApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PublicationLanguageRead> result = apiInstance.readPublicationLanguagesPublicationLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#readPublicationLanguagesPublicationLanguagesGet");
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

[**List&lt;PublicationLanguageRead&gt;**](PublicationLanguageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PublicationApi;


PublicationApi apiInstance = new PublicationApi();
Integer publicationId = 56; // Integer | 
try {
    PublicationRead result = apiInstance.readPublicationPublicationsPublicationIdGet(publicationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#readPublicationPublicationsPublicationIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **Integer**|  |

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationsPublicationsGet"></a>
# **readPublicationsPublicationsGet**
> List&lt;PublicationRead&gt; readPublicationsPublicationsGet(q, offset, limit)

Read Publications

Get all Publication.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PublicationApi;


PublicationApi apiInstance = new PublicationApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PublicationRead> result = apiInstance.readPublicationsPublicationsGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#readPublicationsPublicationsGet");
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

[**List&lt;PublicationRead&gt;**](PublicationRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
PublicationLanguageUpdate body = new PublicationLanguageUpdate(); // PublicationLanguageUpdate | 
Integer publicationLanguageId = 56; // Integer | 
try {
    PublicationLanguageRead result = apiInstance.updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageUpdate**](PublicationLanguageUpdate.md)|  |
 **publicationLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PublicationApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PublicationApi apiInstance = new PublicationApi();
PublicationUpdate body = new PublicationUpdate(); // PublicationUpdate | 
Integer publicationId = 56; // Integer | 
try {
    PublicationRead result = apiInstance.updatePublicationPublicationsPublicationIdPatch(body, publicationId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PublicationApi#updatePublicationPublicationsPublicationIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationUpdate**](PublicationUpdate.md)|  |
 **publicationId** | **Integer**|  |

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

