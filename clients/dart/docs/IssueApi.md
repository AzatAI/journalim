# swagger.api.IssueApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

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

# **createIssueIssuesPost**
> IssueRead createIssueIssuesPost(body)

Create Issue

Create an Issue.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var body = new IssueCreate(); // IssueCreate | 

try {
    var result = api_instance.createIssueIssuesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->createIssueIssuesPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createIssueLanguageIssueLanguagesPost**
> IssueLanguageRead createIssueLanguageIssueLanguagesPost(body)

Create Issue Language

Create a IssueLanguage.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var body = new IssueLanguageCreate(); // IssueLanguageCreate | 

try {
    var result = api_instance.createIssueLanguageIssueLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->createIssueLanguageIssueLanguagesPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssueIssuesIssueIdDelete**
> SuccessResponseModel deleteIssueIssuesIssueIdDelete(issueId)

Delete Issue

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var issueId = 56; // int | 

try {
    var result = api_instance.deleteIssueIssuesIssueIdDelete(issueId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->deleteIssueIssuesIssueIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete**
> SuccessResponseModel deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId)

Delete Issue Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var issueLanguageId = 56; // int | 

try {
    var result = api_instance.deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readIssueIssuesIssueIdGet**
> IssueRead readIssueIssuesIssueIdGet(issueId)

Read Issue

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssueApi();
var issueId = 56; // int | 

try {
    var result = api_instance.readIssueIssuesIssueIdGet(issueId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->readIssueIssuesIssueIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueId** | **int**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readIssueLanguageIssueLanguagesIssueLanguageIdGet**
> IssueLanguageRead readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId)

Read Issue Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssueApi();
var issueLanguageId = 56; // int | 

try {
    var result = api_instance.readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->readIssueLanguageIssueLanguagesIssueLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **issueLanguageId** | **int**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readIssueLanguagesIssueLanguagesGet**
> List<IssueLanguageRead> readIssueLanguagesIssueLanguagesGet(q, offset, limit)

Read Issue Languages

Get all IssueLanguage.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssueApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readIssueLanguagesIssueLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->readIssueLanguagesIssueLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<IssueLanguageRead>**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readIssuesIssuesGet**
> List<IssueRead> readIssuesIssuesGet(q, offset, limit)

Read Issues

Get all Issue.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new IssueApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readIssuesIssuesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->readIssuesIssuesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<IssueRead>**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIssueIssuesIssueIdPatch**
> IssueRead updateIssueIssuesIssueIdPatch(body, issueId)

Update Issue

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var body = new IssueUpdate(); // IssueUpdate | 
var issueId = 56; // int | 

try {
    var result = api_instance.updateIssueIssuesIssueIdPatch(body, issueId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->updateIssueIssuesIssueIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueUpdate**](IssueUpdate.md)|  | 
 **issueId** | **int**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateIssueLanguageIssueLanguagesIssueLanguageIdPatch**
> IssueLanguageRead updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId)

Update Issue Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new IssueApi();
var body = new IssueLanguageUpdate(); // IssueLanguageUpdate | 
var issueLanguageId = 56; // int | 

try {
    var result = api_instance.updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling IssueApi->updateIssueLanguageIssueLanguagesIssueLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**IssueLanguageUpdate**](IssueLanguageUpdate.md)|  | 
 **issueLanguageId** | **int**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

