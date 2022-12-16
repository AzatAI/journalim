# AttachmentApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttachmentAttachmentsPost**](AttachmentApi.md#createAttachmentAttachmentsPost) | **POST** /attachments | Create Attachment
[**deleteAttachmentAttachmentsAttachmentIdDelete**](AttachmentApi.md#deleteAttachmentAttachmentsAttachmentIdDelete) | **DELETE** /attachments/{attachment_id} | Delete Attachment
[**readAttachmentAttachmentsAttachmentIdGet**](AttachmentApi.md#readAttachmentAttachmentsAttachmentIdGet) | **GET** /attachments/{attachment_id} | Read Attachment
[**readAttachmentsAttachmentsGet**](AttachmentApi.md#readAttachmentsAttachmentsGet) | **GET** /attachments | Read Attachments
[**updateAttachmentAttachmentsAttachmentIdPatch**](AttachmentApi.md#updateAttachmentAttachmentsAttachmentIdPatch) | **PATCH** /attachments/{attachment_id} | Update Attachment

<a name="createAttachmentAttachmentsPost"></a>
# **createAttachmentAttachmentsPost**
> AttachmentRead createAttachmentAttachmentsPost(body)

Create Attachment

Create a Attachment.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.AttachmentApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

AttachmentApi apiInstance = new AttachmentApi();
AttachmentCreate body = new AttachmentCreate(); // AttachmentCreate | 
try {
    AttachmentRead result = apiInstance.createAttachmentAttachmentsPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AttachmentApi#createAttachmentAttachmentsPost");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentCreate**](AttachmentCreate.md)|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteAttachmentAttachmentsAttachmentIdDelete"></a>
# **deleteAttachmentAttachmentsAttachmentIdDelete**
> SuccessResponseModel deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId)

Delete Attachment

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.AttachmentApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

AttachmentApi apiInstance = new AttachmentApi();
Integer attachmentId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AttachmentApi#deleteAttachmentAttachmentsAttachmentIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **Integer**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readAttachmentAttachmentsAttachmentIdGet"></a>
# **readAttachmentAttachmentsAttachmentIdGet**
> AttachmentRead readAttachmentAttachmentsAttachmentIdGet(attachmentId)

Read Attachment

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.AttachmentApi;


AttachmentApi apiInstance = new AttachmentApi();
Integer attachmentId = 56; // Integer | 
try {
    AttachmentRead result = apiInstance.readAttachmentAttachmentsAttachmentIdGet(attachmentId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AttachmentApi#readAttachmentAttachmentsAttachmentIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **Integer**|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readAttachmentsAttachmentsGet"></a>
# **readAttachmentsAttachmentsGet**
> List&lt;AttachmentRead&gt; readAttachmentsAttachmentsGet(q, offset, limit)

Read Attachments

Get all Attachment.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.AttachmentApi;


AttachmentApi apiInstance = new AttachmentApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<AttachmentRead> result = apiInstance.readAttachmentsAttachmentsGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AttachmentApi#readAttachmentsAttachmentsGet");
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

[**List&lt;AttachmentRead&gt;**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateAttachmentAttachmentsAttachmentIdPatch"></a>
# **updateAttachmentAttachmentsAttachmentIdPatch**
> AttachmentRead updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId)

Update Attachment

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.AttachmentApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

AttachmentApi apiInstance = new AttachmentApi();
AttachmentUpdate body = new AttachmentUpdate(); // AttachmentUpdate | 
Integer attachmentId = 56; // Integer | 
try {
    AttachmentRead result = apiInstance.updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling AttachmentApi#updateAttachmentAttachmentsAttachmentIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentUpdate**](AttachmentUpdate.md)|  |
 **attachmentId** | **Integer**|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

