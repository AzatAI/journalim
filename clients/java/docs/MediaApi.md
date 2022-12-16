# MediaApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUploadUploadPost**](MediaApi.md#createUploadUploadPost) | **POST** /upload | Create Upload
[**deleteMediaMediasMediaIdDelete**](MediaApi.md#deleteMediaMediasMediaIdDelete) | **DELETE** /medias/{media_id} | Delete Media
[**readMediaMediasMediaIdGet**](MediaApi.md#readMediaMediasMediaIdGet) | **GET** /medias/{media_id} | Read Media
[**readMediasMediasGet**](MediaApi.md#readMediasMediasGet) | **GET** /medias | Read Medias
[**updateMediaMediasMediaIdPatch**](MediaApi.md#updateMediaMediasMediaIdPatch) | **PATCH** /medias/{media_id} | Update Media

<a name="createUploadUploadPost"></a>
# **createUploadUploadPost**
> GenericFileUploadResponse createUploadUploadPost(file, _public)

Create Upload

Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   &lt;span style:\&quot;color:red\&quot;&gt;WARN&lt;/span&gt; : Uploading files with same filename might overwrite the existing files.

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.MediaApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

MediaApi apiInstance = new MediaApi();
File file = new File("file_example"); // File | 
Boolean _public = false; // Boolean | 
try {
    GenericFileUploadResponse result = apiInstance.createUploadUploadPost(file, _public);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#createUploadUploadPost");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**|  |
 **_public** | **Boolean**|  | [optional] [default to false]

### Return type

[**GenericFileUploadResponse**](GenericFileUploadResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="deleteMediaMediasMediaIdDelete"></a>
# **deleteMediaMediasMediaIdDelete**
> SuccessResponseModel deleteMediaMediasMediaIdDelete(mediaId)

Delete Media

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.MediaApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

MediaApi apiInstance = new MediaApi();
Integer mediaId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deleteMediaMediasMediaIdDelete(mediaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#deleteMediaMediasMediaIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **Integer**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readMediaMediasMediaIdGet"></a>
# **readMediaMediasMediaIdGet**
> MediaRead readMediaMediasMediaIdGet(mediaId)

Read Media

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.MediaApi;


MediaApi apiInstance = new MediaApi();
Integer mediaId = 56; // Integer | 
try {
    MediaRead result = apiInstance.readMediaMediasMediaIdGet(mediaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#readMediaMediasMediaIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **Integer**|  |

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readMediasMediasGet"></a>
# **readMediasMediasGet**
> List&lt;MediaRead&gt; readMediasMediasGet(q, offset, limit)

Read Medias

Get all Media.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.MediaApi;


MediaApi apiInstance = new MediaApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<MediaRead> result = apiInstance.readMediasMediasGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#readMediasMediasGet");
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

[**List&lt;MediaRead&gt;**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateMediaMediasMediaIdPatch"></a>
# **updateMediaMediasMediaIdPatch**
> MediaRead updateMediaMediasMediaIdPatch(body, mediaId)

Update Media

### Example
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.MediaApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

MediaApi apiInstance = new MediaApi();
MediaUpdate body = new MediaUpdate(); // MediaUpdate | 
Integer mediaId = 56; // Integer | 
try {
    MediaRead result = apiInstance.updateMediaMediasMediaIdPatch(body, mediaId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling MediaApi#updateMediaMediasMediaIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MediaUpdate**](MediaUpdate.md)|  |
 **mediaId** | **Integer**|  |

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

