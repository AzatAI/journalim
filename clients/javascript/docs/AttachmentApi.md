# JbsBackendService.AttachmentApi

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.AttachmentApi();
let body = new JbsBackendService.AttachmentCreate(); // AttachmentCreate | 

apiInstance.createAttachmentAttachmentsPost(body, (error, data, response) => {
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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.AttachmentApi();
let attachmentId = 56; // Number | 

apiInstance.deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId, (error, data, response) => {
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
 **attachmentId** | **Number**|  | 

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.AttachmentApi();
let attachmentId = 56; // Number | 

apiInstance.readAttachmentAttachmentsAttachmentIdGet(attachmentId, (error, data, response) => {
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
 **attachmentId** | **Number**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readAttachmentsAttachmentsGet"></a>
# **readAttachmentsAttachmentsGet**
> [AttachmentRead] readAttachmentsAttachmentsGet(opts)

Read Attachments

Get all Attachment.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.AttachmentApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readAttachmentsAttachmentsGet(opts, (error, data, response) => {
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

[**[AttachmentRead]**](AttachmentRead.md)

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.AttachmentApi();
let body = new JbsBackendService.AttachmentUpdate(); // AttachmentUpdate | 
let attachmentId = 56; // Number | 

apiInstance.updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId, (error, data, response) => {
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
 **body** | [**AttachmentUpdate**](AttachmentUpdate.md)|  | 
 **attachmentId** | **Number**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

