# swagger.api.UserApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserUsersPost**](UserApi.md#createUserUsersPost) | **POST** /users | Create User
[**deleteUserUsersUserIdDelete**](UserApi.md#deleteUserUsersUserIdDelete) | **DELETE** /users/{user_id} | Delete User
[**getCurrentUserUsersMeGet**](UserApi.md#getCurrentUserUsersMeGet) | **GET** /users/me | Get Current User
[**getUserUsersUserIdGet**](UserApi.md#getUserUsersUserIdGet) | **GET** /users/{user_id} | Get User
[**getUsersUsersGet**](UserApi.md#getUsersUsersGet) | **GET** /users | Get Users
[**updateUserUsersUserIdPatch**](UserApi.md#updateUserUsersUserIdPatch) | **PATCH** /users/{user_id} | Update User

# **createUserUsersPost**
> UserRead createUserUsersPost(body)

Create User

Create a new User

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserApi();
var body = new UserCreate(); // UserCreate | 

try {
    var result = api_instance.createUserUsersPost(body);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->createUserUsersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserCreate**](UserCreate.md)|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserUsersUserIdDelete**
> SuccessResponseModel deleteUserUsersUserIdDelete(userId)

Delete User

Delete a User

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();
var userId = 56; // int | 

try {
    var result = api_instance.deleteUserUsersUserIdDelete(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->deleteUserUsersUserIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCurrentUserUsersMeGet**
> UserRead getCurrentUserUsersMeGet()

Get Current User

Get all Users

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();

try {
    var result = api_instance.getCurrentUserUsersMeGet();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getCurrentUserUsersMeGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserRead**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserUsersUserIdGet**
> UserRead getUserUsersUserIdGet(userId)

Get User

Get a User by ID

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();
var userId = 56; // int | 

try {
    var result = api_instance.getUserUsersUserIdGet(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getUserUsersUserIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersUsersGet**
> List<UserRead> getUsersUsersGet(q, offset, limit)

Get Users

Get all Users. staff [ok] admin [ok]

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.getUsersUsersGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getUsersUsersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<UserRead>**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserUsersUserIdPatch**
> UserRead updateUserUsersUserIdPatch(body, userId)

Update User

Update a User

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new UserApi();
var body = new UserUpdate(); // UserUpdate | 
var userId = 56; // int | 

try {
    var result = api_instance.updateUserUsersUserIdPatch(body, userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->updateUserUsersUserIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserUpdate**](UserUpdate.md)|  | 
 **userId** | **int**|  | 

### Return type

[**UserRead**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

