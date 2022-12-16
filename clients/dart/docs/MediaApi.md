# swagger.api.MediaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUploadUploadPost**](MediaApi.md#createUploadUploadPost) | **POST** /upload | Create Upload
[**deleteMediaMediasMediaIdDelete**](MediaApi.md#deleteMediaMediasMediaIdDelete) | **DELETE** /medias/{media_id} | Delete Media
[**readMediaMediasMediaIdGet**](MediaApi.md#readMediaMediasMediaIdGet) | **GET** /medias/{media_id} | Read Media
[**readMediasMediasGet**](MediaApi.md#readMediasMediasGet) | **GET** /medias | Read Medias
[**updateMediaMediasMediaIdPatch**](MediaApi.md#updateMediaMediasMediaIdPatch) | **PATCH** /medias/{media_id} | Update Media

# **createUploadUploadPost**
> GenericFileUploadResponse createUploadUploadPost(file, public)

Create Upload

Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   <span style:\"color:red\">WARN</span> : Uploading files with same filename might overwrite the existing files.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaApi();
var file = file_example; // String | 
var public = true; // bool | 

try {
    var result = api_instance.createUploadUploadPost(file, public);
    print(result);
} catch (e) {
    print("Exception when calling MediaApi->createUploadUploadPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **String****String**|  | 
 **public** | **bool**|  | [optional] [default to false]

### Return type

[**GenericFileUploadResponse**](GenericFileUploadResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMediaMediasMediaIdDelete**
> SuccessResponseModel deleteMediaMediasMediaIdDelete(mediaId)

Delete Media

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaApi();
var mediaId = 56; // int | 

try {
    var result = api_instance.deleteMediaMediasMediaIdDelete(mediaId);
    print(result);
} catch (e) {
    print("Exception when calling MediaApi->deleteMediaMediasMediaIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readMediaMediasMediaIdGet**
> MediaRead readMediaMediasMediaIdGet(mediaId)

Read Media

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaApi();
var mediaId = 56; // int | 

try {
    var result = api_instance.readMediaMediasMediaIdGet(mediaId);
    print(result);
} catch (e) {
    print("Exception when calling MediaApi->readMediaMediasMediaIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **int**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readMediasMediasGet**
> List<MediaRead> readMediasMediasGet(q, offset, limit)

Read Medias

Get all Media.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new MediaApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readMediasMediasGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling MediaApi->readMediasMediasGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<MediaRead>**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMediaMediasMediaIdPatch**
> MediaRead updateMediaMediasMediaIdPatch(body, mediaId)

Update Media

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new MediaApi();
var body = new MediaUpdate(); // MediaUpdate | 
var mediaId = 56; // int | 

try {
    var result = api_instance.updateMediaMediasMediaIdPatch(body, mediaId);
    print(result);
} catch (e) {
    print("Exception when calling MediaApi->updateMediaMediasMediaIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MediaUpdate**](MediaUpdate.md)|  | 
 **mediaId** | **int**|  | 

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

