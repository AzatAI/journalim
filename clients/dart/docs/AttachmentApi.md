# swagger.api.AttachmentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttachmentAttachmentsPost**](AttachmentApi.md#createAttachmentAttachmentsPost) | **POST** /attachments | Create Attachment
[**deleteAttachmentAttachmentsAttachmentIdDelete**](AttachmentApi.md#deleteAttachmentAttachmentsAttachmentIdDelete) | **DELETE** /attachments/{attachment_id} | Delete Attachment
[**readAttachmentAttachmentsAttachmentIdGet**](AttachmentApi.md#readAttachmentAttachmentsAttachmentIdGet) | **GET** /attachments/{attachment_id} | Read Attachment
[**readAttachmentsAttachmentsGet**](AttachmentApi.md#readAttachmentsAttachmentsGet) | **GET** /attachments | Read Attachments
[**updateAttachmentAttachmentsAttachmentIdPatch**](AttachmentApi.md#updateAttachmentAttachmentsAttachmentIdPatch) | **PATCH** /attachments/{attachment_id} | Update Attachment

# **createAttachmentAttachmentsPost**
> AttachmentRead createAttachmentAttachmentsPost(body)

Create Attachment

Create a Attachment.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AttachmentApi();
var body = new AttachmentCreate(); // AttachmentCreate | 

try {
    var result = api_instance.createAttachmentAttachmentsPost(body);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentApi->createAttachmentAttachmentsPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAttachmentAttachmentsAttachmentIdDelete**
> SuccessResponseModel deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId)

Delete Attachment

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AttachmentApi();
var attachmentId = 56; // int | 

try {
    var result = api_instance.deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentApi->deleteAttachmentAttachmentsAttachmentIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAttachmentAttachmentsAttachmentIdGet**
> AttachmentRead readAttachmentAttachmentsAttachmentIdGet(attachmentId)

Read Attachment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AttachmentApi();
var attachmentId = 56; // int | 

try {
    var result = api_instance.readAttachmentAttachmentsAttachmentIdGet(attachmentId);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentApi->readAttachmentAttachmentsAttachmentIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **int**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readAttachmentsAttachmentsGet**
> List<AttachmentRead> readAttachmentsAttachmentsGet(q, offset, limit)

Read Attachments

Get all Attachment.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new AttachmentApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readAttachmentsAttachmentsGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentApi->readAttachmentsAttachmentsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<AttachmentRead>**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAttachmentAttachmentsAttachmentIdPatch**
> AttachmentRead updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId)

Update Attachment

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new AttachmentApi();
var body = new AttachmentUpdate(); // AttachmentUpdate | 
var attachmentId = 56; // int | 

try {
    var result = api_instance.updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId);
    print(result);
} catch (e) {
    print("Exception when calling AttachmentApi->updateAttachmentAttachmentsAttachmentIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentUpdate**](AttachmentUpdate.md)|  | 
 **attachmentId** | **int**|  | 

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

