# swagger.api.PageApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPageLanguagePageLanguagesPost**](PageApi.md#createPageLanguagePageLanguagesPost) | **POST** /page_languages | Create Page Language
[**createPagePagesPost**](PageApi.md#createPagePagesPost) | **POST** /pages | Create Page
[**deletePageLanguagePageLanguagesPageLanguageIdDelete**](PageApi.md#deletePageLanguagePageLanguagesPageLanguageIdDelete) | **DELETE** /page_languages/{page_language_id} | Delete Page Language
[**deletePagePagesPageIdDelete**](PageApi.md#deletePagePagesPageIdDelete) | **DELETE** /pages/{page_id} | Delete Page
[**readPageLanguagePageLanguagesPageLanguageIdGet**](PageApi.md#readPageLanguagePageLanguagesPageLanguageIdGet) | **GET** /page_languages/{page_language_id} | Read Page Language
[**readPageLanguagesPageLanguagesGet**](PageApi.md#readPageLanguagesPageLanguagesGet) | **GET** /page_languages | Read Page Languages
[**readPagePagesPageIdGet**](PageApi.md#readPagePagesPageIdGet) | **GET** /pages/{page_id} | Read Page
[**readPagesPagesGet**](PageApi.md#readPagesPagesGet) | **GET** /pages | Read Pages
[**updatePageLanguagePageLanguagesPageLanguageIdPatch**](PageApi.md#updatePageLanguagePageLanguagesPageLanguageIdPatch) | **PATCH** /page_languages/{page_language_id} | Update Page Language
[**updatePagePagesPageIdPatch**](PageApi.md#updatePagePagesPageIdPatch) | **PATCH** /pages/{page_id} | Update Page

# **createPageLanguagePageLanguagesPost**
> PageLanguageRead createPageLanguagePageLanguagesPost(body)

Create Page Language

Create a PageLanguage.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var body = new PageLanguageCreate(); // PageLanguageCreate | 

try {
    var result = api_instance.createPageLanguagePageLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->createPageLanguagePageLanguagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageCreate**](PageLanguageCreate.md)|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPagePagesPost**
> PageRead createPagePagesPost(body)

Create Page

Create a Page.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var body = new PageCreate(); // PageCreate | 

try {
    var result = api_instance.createPagePagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->createPagePagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageCreate**](PageCreate.md)|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePageLanguagePageLanguagesPageLanguageIdDelete**
> SuccessResponseModel deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId)

Delete Page Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var pageLanguageId = 56; // int | 

try {
    var result = api_instance.deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->deletePageLanguagePageLanguagesPageLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePagePagesPageIdDelete**
> SuccessResponseModel deletePagePagesPageIdDelete(pageId)

Delete Page

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var pageId = 56; // int | 

try {
    var result = api_instance.deletePagePagesPageIdDelete(pageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->deletePagePagesPageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPageLanguagePageLanguagesPageLanguageIdGet**
> PageLanguageRead readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId)

Read Page Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PageApi();
var pageLanguageId = 56; // int | 

try {
    var result = api_instance.readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->readPageLanguagePageLanguagesPageLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageLanguageId** | **int**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPageLanguagesPageLanguagesGet**
> List<PageLanguageRead> readPageLanguagesPageLanguagesGet(q, offset, limit)

Read Page Languages

Get all PageLanguage.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PageApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPageLanguagesPageLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->readPageLanguagesPageLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PageLanguageRead>**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPagePagesPageIdGet**
> PageRead readPagePagesPageIdGet(pageId)

Read Page

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PageApi();
var pageId = 56; // int | 

try {
    var result = api_instance.readPagePagesPageIdGet(pageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->readPagePagesPageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageId** | **int**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPagesPagesGet**
> List<PageRead> readPagesPagesGet(q, offset, limit)

Read Pages

Get all Page.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PageApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPagesPagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->readPagesPagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PageRead>**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePageLanguagePageLanguagesPageLanguageIdPatch**
> PageLanguageRead updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId)

Update Page Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var body = new PageLanguageUpdate(); // PageLanguageUpdate | 
var pageLanguageId = 56; // int | 

try {
    var result = api_instance.updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->updatePageLanguagePageLanguagesPageLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageLanguageUpdate**](PageLanguageUpdate.md)|  | 
 **pageLanguageId** | **int**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePagePagesPageIdPatch**
> PageRead updatePagePagesPageIdPatch(body, pageId)

Update Page

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PageApi();
var body = new PageUpdate(); // PageUpdate | 
var pageId = 56; // int | 

try {
    var result = api_instance.updatePagePagesPageIdPatch(body, pageId);
    print(result);
} catch (e) {
    print("Exception when calling PageApi->updatePagePagesPageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PageUpdate**](PageUpdate.md)|  | 
 **pageId** | **int**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

