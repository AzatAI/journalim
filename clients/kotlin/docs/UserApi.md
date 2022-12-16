# UserApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUserUsersPost**](UserApi.md#createUserUsersPost) | **POST** /users | Create User
[**deleteUserUsersUserIdDelete**](UserApi.md#deleteUserUsersUserIdDelete) | **DELETE** /users/{user_id} | Delete User
[**getCurrentUserUsersMeGet**](UserApi.md#getCurrentUserUsersMeGet) | **GET** /users/me | Get Current User
[**getUserUsersUserIdGet**](UserApi.md#getUserUsersUserIdGet) | **GET** /users/{user_id} | Get User
[**getUsersUsersGet**](UserApi.md#getUsersUsersGet) | **GET** /users | Get Users
[**updateUserUsersUserIdPatch**](UserApi.md#updateUserUsersUserIdPatch) | **PATCH** /users/{user_id} | Update User

<a name="createUserUsersPost"></a>
# **createUserUsersPost**
> UserRead createUserUsersPost(body)

Create User

Create a new User

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
val body : UserCreate =  // UserCreate | 
try {
    val result : UserRead = apiInstance.createUserUsersPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#createUserUsersPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#createUserUsersPost")
    e.printStackTrace()
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

<a name="deleteUserUsersUserIdDelete"></a>
# **deleteUserUsersUserIdDelete**
> SuccessResponseModel deleteUserUsersUserIdDelete(userId)

Delete User

Delete a User

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteUserUsersUserIdDelete(userId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#deleteUserUsersUserIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#deleteUserUsersUserIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCurrentUserUsersMeGet"></a>
# **getCurrentUserUsersMeGet**
> UserRead getCurrentUserUsersMeGet()

Get Current User

Get all Users

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
try {
    val result : UserRead = apiInstance.getCurrentUserUsersMeGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#getCurrentUserUsersMeGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#getCurrentUserUsersMeGet")
    e.printStackTrace()
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

<a name="getUserUsersUserIdGet"></a>
# **getUserUsersUserIdGet**
> UserRead getUserUsersUserIdGet(userId)

Get User

Get a User by ID

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
val userId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : UserRead = apiInstance.getUserUsersUserIdGet(userId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#getUserUsersUserIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#getUserUsersUserIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **kotlin.Int**|  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsersUsersGet"></a>
# **getUsersUsersGet**
> kotlin.Array&lt;UserRead&gt; getUsersUsersGet(q, offset, limit)

Get Users

Get all Users. staff [ok] admin [ok]

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<UserRead> = apiInstance.getUsersUsersGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#getUsersUsersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#getUsersUsersGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**|  | [optional]
 **offset** | **kotlin.Int**|  | [optional] [default to 0]
 **limit** | **kotlin.Int**|  | [optional] [default to 100]

### Return type

[**kotlin.Array&lt;UserRead&gt;**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateUserUsersUserIdPatch"></a>
# **updateUserUsersUserIdPatch**
> UserRead updateUserUsersUserIdPatch(body, userId)

Update User

Update a User

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = UserApi()
val body : UserUpdate =  // UserUpdate | 
val userId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : UserRead = apiInstance.updateUserUsersUserIdPatch(body, userId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling UserApi#updateUserUsersUserIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling UserApi#updateUserUsersUserIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserUpdate**](UserUpdate.md)|  |
 **userId** | **kotlin.Int**|  |

### Return type

[**UserRead**](UserRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

