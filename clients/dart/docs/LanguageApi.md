# swagger.api.LanguageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLanguageLanguagesPost**](LanguageApi.md#createLanguageLanguagesPost) | **POST** /languages | Create Language
[**deleteLanguageLanguagesLanguageIdDelete**](LanguageApi.md#deleteLanguageLanguagesLanguageIdDelete) | **DELETE** /languages/{language_id} | Delete Language
[**readLanguageLanguagesLanguageIdGet**](LanguageApi.md#readLanguageLanguagesLanguageIdGet) | **GET** /languages/{language_id} | Read Language
[**readLanguagesLanguagesGet**](LanguageApi.md#readLanguagesLanguagesGet) | **GET** /languages | Read Languages
[**updateLanguageLanguagesLanguageIdPatch**](LanguageApi.md#updateLanguageLanguagesLanguageIdPatch) | **PATCH** /languages/{language_id} | Update Language

# **createLanguageLanguagesPost**
> LanguageRead createLanguageLanguagesPost(body)

Create Language

Create a Language.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LanguageApi();
var body = new LanguageCreate(); // LanguageCreate | 

try {
    var result = api_instance.createLanguageLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->createLanguageLanguagesPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteLanguageLanguagesLanguageIdDelete**
> SuccessResponseModel deleteLanguageLanguagesLanguageIdDelete(languageId)

Delete Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LanguageApi();
var languageId = 56; // int | 

try {
    var result = api_instance.deleteLanguageLanguagesLanguageIdDelete(languageId);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->deleteLanguageLanguagesLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readLanguageLanguagesLanguageIdGet**
> LanguageRead readLanguageLanguagesLanguageIdGet(languageId)

Read Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var languageId = 56; // int | 

try {
    var result = api_instance.readLanguageLanguagesLanguageIdGet(languageId);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->readLanguageLanguagesLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **languageId** | **int**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readLanguagesLanguagesGet**
> List<LanguageRead> readLanguagesLanguagesGet(q, offset, limit)

Read Languages

Get all Language.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new LanguageApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readLanguagesLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->readLanguagesLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<LanguageRead>**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateLanguageLanguagesLanguageIdPatch**
> LanguageRead updateLanguageLanguagesLanguageIdPatch(body, languageId)

Update Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new LanguageApi();
var body = new LanguageUpdate(); // LanguageUpdate | 
var languageId = 56; // int | 

try {
    var result = api_instance.updateLanguageLanguagesLanguageIdPatch(body, languageId);
    print(result);
} catch (e) {
    print("Exception when calling LanguageApi->updateLanguageLanguagesLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**LanguageUpdate**](LanguageUpdate.md)|  | 
 **languageId** | **int**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

