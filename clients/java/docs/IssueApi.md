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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
IssueCreate body = new IssueCreate(); // IssueCreate | 
try {
    IssueRead result = apiInstance.createIssueIssuesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#createIssueIssuesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
IssueLanguageCreate body = new IssueLanguageCreate(); // IssueLanguageCreate | 
try {
    IssueLanguageRead result = apiInstance.createIssueLanguageIssueLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#createIssueLanguageIssueLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
Integer issueId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteIssueIssuesIssueIdDelete(issueId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#deleteIssueIssuesIssueIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
Integer issueLanguageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.IssueApi;


IssueApi apiInstance = new IssueApi();
Integer issueId = 56; // Integer | 
try {
    IssueRead result = apiInstance.readIssueIssuesIssueIdGet(issueId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#readIssueIssuesIssueIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.IssueApi;


IssueApi apiInstance = new IssueApi();
Integer issueLanguageId = 56; // Integer | 
try {
    IssueLanguageRead result = apiInstance.readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#readIssueLanguageIssueLanguagesIssueLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **Integer**|  |

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueLanguagesIssueLanguagesGet"></a>
# **readIssueLanguagesIssueLanguagesGet**
> List&lt;IssueLanguageRead&gt; readIssueLanguagesIssueLanguagesGet(q, offset, limit)

Read Issue Languages

Get all IssueLanguage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.IssueApi;


IssueApi apiInstance = new IssueApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<IssueLanguageRead> result = apiInstance.readIssueLanguagesIssueLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#readIssueLanguagesIssueLanguagesGet");
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

[**List&lt;IssueLanguageRead&gt;**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssuesIssuesGet"></a>
# **readIssuesIssuesGet**
> List&lt;IssueRead&gt; readIssuesIssuesGet(q, offset, limit)

Read Issues

Get all Issue.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.IssueApi;


IssueApi apiInstance = new IssueApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<IssueRead> result = apiInstance.readIssuesIssuesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#readIssuesIssuesGet");
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

[**List&lt;IssueRead&gt;**](IssueRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
IssueUpdate body = new IssueUpdate(); // IssueUpdate | 
Integer issueId = 56; // Integer | 
try {
    IssueRead result = apiInstance.updateIssueIssuesIssueIdPatch(body, issueId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#updateIssueIssuesIssueIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueUpdate**](IssueUpdate.md)|  |
 **issueId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.IssueApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

IssueApi apiInstance = new IssueApi();
IssueLanguageUpdate body = new IssueLanguageUpdate(); // IssueLanguageUpdate | 
Integer issueLanguageId = 56; // Integer | 
try {
    IssueLanguageRead result = apiInstance.updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling IssueApi#updateIssueLanguageIssueLanguagesIssueLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueLanguageUpdate**](IssueLanguageUpdate.md)|  |
 **issueLanguageId** | **Integer**|  |

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

