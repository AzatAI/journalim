# swagger.api.PostApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createPostLanguagePostLanguagesPost**](PostApi.md#createPostLanguagePostLanguagesPost) | **POST** /post_languages | Create Post Language
[**createPostPostsPost**](PostApi.md#createPostPostsPost) | **POST** /posts | Create Post
[**deletePostLanguagePostLanguagesPostLanguageIdDelete**](PostApi.md#deletePostLanguagePostLanguagesPostLanguageIdDelete) | **DELETE** /post_languages/{post_language_id} | Delete Post Language
[**deletePostPostsPostIdDelete**](PostApi.md#deletePostPostsPostIdDelete) | **DELETE** /posts/{post_id} | Delete Post
[**readPostLanguagePostLanguagesPostLanguageIdGet**](PostApi.md#readPostLanguagePostLanguagesPostLanguageIdGet) | **GET** /post_languages/{post_language_id} | Read Post Language
[**readPostLanguagesPostLanguagesGet**](PostApi.md#readPostLanguagesPostLanguagesGet) | **GET** /post_languages | Read Post Languages
[**readPostPostsPostIdGet**](PostApi.md#readPostPostsPostIdGet) | **GET** /posts/{post_id} | Read Post
[**readPostsPostsGet**](PostApi.md#readPostsPostsGet) | **GET** /posts | Read Posts
[**updatePostLanguagePostLanguagesPostLanguageIdPatch**](PostApi.md#updatePostLanguagePostLanguagesPostLanguageIdPatch) | **PATCH** /post_languages/{post_language_id} | Update Post Language
[**updatePostPostsPostIdPatch**](PostApi.md#updatePostPostsPostIdPatch) | **PATCH** /posts/{post_id} | Update Post

# **createPostLanguagePostLanguagesPost**
> PostLanguageRead createPostLanguagePostLanguagesPost(body)

Create Post Language

Create a PostLanguage.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var body = new PostLanguageCreate(); // PostLanguageCreate | 

try {
    var result = api_instance.createPostLanguagePostLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->createPostLanguagePostLanguagesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageCreate**](PostLanguageCreate.md)|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createPostPostsPost**
> PostRead createPostPostsPost(body)

Create Post

Create a Post.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var body = new PostCreate(); // PostCreate | 

try {
    var result = api_instance.createPostPostsPost(body);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->createPostPostsPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostCreate**](PostCreate.md)|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePostLanguagePostLanguagesPostLanguageIdDelete**
> SuccessResponseModel deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId)

Delete Post Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var postLanguageId = 56; // int | 

try {
    var result = api_instance.deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->deletePostLanguagePostLanguagesPostLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePostPostsPostIdDelete**
> SuccessResponseModel deletePostPostsPostIdDelete(postId)

Delete Post

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var postId = 56; // int | 

try {
    var result = api_instance.deletePostPostsPostIdDelete(postId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->deletePostPostsPostIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPostLanguagePostLanguagesPostLanguageIdGet**
> PostLanguageRead readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId)

Read Post Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PostApi();
var postLanguageId = 56; // int | 

try {
    var result = api_instance.readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->readPostLanguagePostLanguagesPostLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **int**|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPostLanguagesPostLanguagesGet**
> List<PostLanguageRead> readPostLanguagesPostLanguagesGet(q, offset, limit)

Read Post Languages

Get all PostLanguage.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PostApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPostLanguagesPostLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->readPostLanguagesPostLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PostLanguageRead>**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPostPostsPostIdGet**
> PostRead readPostPostsPostIdGet(postId)

Read Post

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PostApi();
var postId = 56; // int | 

try {
    var result = api_instance.readPostPostsPostIdGet(postId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->readPostPostsPostIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **int**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readPostsPostsGet**
> List<PostRead> readPostsPostsGet(q, offset, limit)

Read Posts

Get all Post.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PostApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readPostsPostsGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->readPostsPostsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<PostRead>**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePostLanguagePostLanguagesPostLanguageIdPatch**
> PostLanguageRead updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId)

Update Post Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var body = new PostLanguageUpdate(); // PostLanguageUpdate | 
var postLanguageId = 56; // int | 

try {
    var result = api_instance.updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->updatePostLanguagePostLanguagesPostLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageUpdate**](PostLanguageUpdate.md)|  | 
 **postLanguageId** | **int**|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePostPostsPostIdPatch**
> PostRead updatePostPostsPostIdPatch(body, postId)

Update Post

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new PostApi();
var body = new PostUpdate(); // PostUpdate | 
var postId = 56; // int | 

try {
    var result = api_instance.updatePostPostsPostIdPatch(body, postId);
    print(result);
} catch (e) {
    print("Exception when calling PostApi->updatePostPostsPostIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostUpdate**](PostUpdate.md)|  | 
 **postId** | **int**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

