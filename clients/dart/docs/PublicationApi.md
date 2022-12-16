# swagger.api.PublicationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPublicationLanguagePublicationLanguagesPost**](PublicationApi.md#createPublicationLanguagePublicationLanguagesPost) | **POST** /publication_languages | Create Publication Language
[**createPublicationPublicationsPost**](PublicationApi.md#createPublicationPublicationsPost) | **POST** /publications | Create Publication
[**deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete**](PublicationApi.md#deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete) | **DELETE** /publication_languages/{publication_language_id} | Delete Publication Language
[**deletePublicationPublicationsPublicationIdDelete**](PublicationApi.md#deletePublicationPublicationsPublicationIdDelete) | **DELETE** /publications/{publication_id} | Delete Publication
[**readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet**](PublicationApi.md#readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet) | **GET** /publication_languages/{publication_language_id} | Read Publication Language
[**readPublicationLanguagesPublicationLanguagesGet**](PublicationApi.md#readPublicationLanguagesPublicationLanguagesGet) | **GET** /publication_languages | Read Publication Languages
[**readPublicationPublicationsPublicationIdGet**](PublicationApi.md#readPublicationPublicationsPublicationIdGet) | **GET** /publications/{publication_id} | Read Publication
[**readPublicationsPublicationsGet**](PublicationApi.md#readPublicationsPublicationsGet) | **GET** /publications | Read Publications
[**updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch**](PublicationApi.md#updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch) | **PATCH** /publication_languages/{publication_language_id} | Update Publication Language
[**updatePublicationPublicationsPublicationIdPatch**](PublicationApi.md#updatePublicationPublicationsPublicationIdPatch) | **PATCH** /publications/{publication_id} | Update Publication

# **createPublicationLanguagePublicationLanguagesPost**
> PublicationLanguageRead createPublicationLanguagePublicationLanguagesPost(body)

Create Publication Language

Create a PublicationLanguage.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var body = new PublicationLanguageCreate(); // PublicationLanguageCreate | 

try {
    var result = api_instance.createPublicationLanguagePublicationLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->createPublicationLanguagePublicationLanguagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageCreate**](PublicationLanguageCreate.md)|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPublicationPublicationsPost**
> PublicationRead createPublicationPublicationsPost(body)

Create Publication

Create a Publication.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var body = new PublicationCreate(); // PublicationCreate | 

try {
    var result = api_instance.createPublicationPublicationsPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->createPublicationPublicationsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationCreate**](PublicationCreate.md)|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete**
> SuccessResponseModel deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId)

Delete Publication Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var publicationLanguageId = 56; // int | 

try {
    var result = api_instance.deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePublicationPublicationsPublicationIdDelete**
> SuccessResponseModel deletePublicationPublicationsPublicationIdDelete(publicationId)

Delete Publication

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var publicationId = 56; // int | 

try {
    var result = api_instance.deletePublicationPublicationsPublicationIdDelete(publicationId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->deletePublicationPublicationsPublicationIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet**
> PublicationLanguageRead readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId)

Read Publication Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicationApi();
var publicationLanguageId = 56; // int | 

try {
    var result = api_instance.readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationLanguageId** | **int**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPublicationLanguagesPublicationLanguagesGet**
> List<PublicationLanguageRead> readPublicationLanguagesPublicationLanguagesGet(q, offset, limit)

Read Publication Languages

Get all PublicationLanguage.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicationApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPublicationLanguagesPublicationLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->readPublicationLanguagesPublicationLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PublicationLanguageRead>**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPublicationPublicationsPublicationIdGet**
> PublicationRead readPublicationPublicationsPublicationIdGet(publicationId)

Read Publication

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicationApi();
var publicationId = 56; // int | 

try {
    var result = api_instance.readPublicationPublicationsPublicationIdGet(publicationId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->readPublicationPublicationsPublicationIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **publicationId** | **int**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPublicationsPublicationsGet**
> List<PublicationRead> readPublicationsPublicationsGet(q, offset, limit)

Read Publications

Get all Publication.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PublicationApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPublicationsPublicationsGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->readPublicationsPublicationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PublicationRead>**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch**
> PublicationLanguageRead updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId)

Update Publication Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var body = new PublicationLanguageUpdate(); // PublicationLanguageUpdate | 
var publicationLanguageId = 56; // int | 

try {
    var result = api_instance.updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationLanguageUpdate**](PublicationLanguageUpdate.md)|  | 
 **publicationLanguageId** | **int**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePublicationPublicationsPublicationIdPatch**
> PublicationRead updatePublicationPublicationsPublicationIdPatch(body, publicationId)

Update Publication

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PublicationApi();
var body = new PublicationUpdate(); // PublicationUpdate | 
var publicationId = 56; // int | 

try {
    var result = api_instance.updatePublicationPublicationsPublicationIdPatch(body, publicationId);
    print(result);
} catch (e) {
    print("Exception when calling PublicationApi->updatePublicationPublicationsPublicationIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PublicationUpdate**](PublicationUpdate.md)|  | 
 **publicationId** | **int**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

