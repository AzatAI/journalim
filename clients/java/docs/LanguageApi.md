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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LanguageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

LanguageApi apiInstance = new LanguageApi();
LanguageCreate body = new LanguageCreate(); // LanguageCreate | 
try {
    LanguageRead result = apiInstance.createLanguageLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LanguageApi#createLanguageLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LanguageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

LanguageApi apiInstance = new LanguageApi();
Integer languageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteLanguageLanguagesLanguageIdDelete(languageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LanguageApi#deleteLanguageLanguagesLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.LanguageApi;


LanguageApi apiInstance = new LanguageApi();
Integer languageId = 56; // Integer | 
try {
    LanguageRead result = apiInstance.readLanguageLanguagesLanguageIdGet(languageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LanguageApi#readLanguageLanguagesLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **Integer**|  |

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readLanguagesLanguagesGet"></a>
# **readLanguagesLanguagesGet**
> List&lt;LanguageRead&gt; readLanguagesLanguagesGet(q, offset, limit)

Read Languages

Get all Language.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.LanguageApi;


LanguageApi apiInstance = new LanguageApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<LanguageRead> result = apiInstance.readLanguagesLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LanguageApi#readLanguagesLanguagesGet");
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

[**List&lt;LanguageRead&gt;**](LanguageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.LanguageApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

LanguageApi apiInstance = new LanguageApi();
LanguageUpdate body = new LanguageUpdate(); // LanguageUpdate | 
Integer languageId = 56; // Integer | 
try {
    LanguageRead result = apiInstance.updateLanguageLanguagesLanguageIdPatch(body, languageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling LanguageApi#updateLanguageLanguagesLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageUpdate**](LanguageUpdate.md)|  |
 **languageId** | **Integer**|  |

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

