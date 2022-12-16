# JbsBackendService.MediaApi

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
> GenericFileUploadResponse createUploadUploadPost(file, opts)

Create Upload

Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   &lt;span style:\&quot;color:red\&quot;&gt;WARN&lt;/span&gt; : Uploading files with same filename might overwrite the existing files.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.MediaApi();
let file = "file_example"; // Blob | 
let opts = { 
  '_public': false // Boolean | 
};
apiInstance.createUploadUploadPost(file, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **Blob**|  | 
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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.MediaApi();
let mediaId = 56; // Number | 

apiInstance.deleteMediaMediasMediaIdDelete(mediaId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **Number**|  | 

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.MediaApi();
let mediaId = 56; // Number | 

apiInstance.readMediaMediasMediaIdGet(mediaId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **Number**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readMediasMediasGet"></a>
# **readMediasMediasGet**
> [MediaRead] readMediasMediasGet(opts)

Read Medias

Get all Media.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.MediaApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readMediasMediasGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **Number**|  | [optional] [default to 0]
 **limit** | **Number**|  | [optional] [default to 100]

### Return type

[**[MediaRead]**](MediaRead.md)

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.MediaApi();
let body = new JbsBackendService.MediaUpdate(); // MediaUpdate | 
let mediaId = 56; // Number | 

apiInstance.updateMediaMediasMediaIdPatch(body, mediaId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MediaUpdate**](MediaUpdate.md)|  | 
 **mediaId** | **Number**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

