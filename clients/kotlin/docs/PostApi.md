# PostApi

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

<a name="createPostLanguagePostLanguagesPost"></a>
# **createPostLanguagePostLanguagesPost**
> PostLanguageRead createPostLanguagePostLanguagesPost(body)

Create Post Language

Create a PostLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val body : PostLanguageCreate =  // PostLanguageCreate | 
try {
    val result : PostLanguageRead = apiInstance.createPostLanguagePostLanguagesPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#createPostLanguagePostLanguagesPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#createPostLanguagePostLanguagesPost")
    e.printStackTrace()
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

<a name="createPostPostsPost"></a>
# **createPostPostsPost**
> PostRead createPostPostsPost(body)

Create Post

Create a Post.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val body : PostCreate =  // PostCreate | 
try {
    val result : PostRead = apiInstance.createPostPostsPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#createPostPostsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#createPostPostsPost")
    e.printStackTrace()
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

<a name="deletePostLanguagePostLanguagesPostLanguageIdDelete"></a>
# **deletePostLanguagePostLanguagesPostLanguageIdDelete**
> SuccessResponseModel deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId)

Delete Post Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val postLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#deletePostLanguagePostLanguagesPostLanguageIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#deletePostLanguagePostLanguagesPostLanguageIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deletePostPostsPostIdDelete"></a>
# **deletePostPostsPostIdDelete**
> SuccessResponseModel deletePostPostsPostIdDelete(postId)

Delete Post

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val postId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deletePostPostsPostIdDelete(postId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#deletePostPostsPostIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#deletePostPostsPostIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostLanguagePostLanguagesPostLanguageIdGet"></a>
# **readPostLanguagePostLanguagesPostLanguageIdGet**
> PostLanguageRead readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId)

Read Post Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val postLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PostLanguageRead = apiInstance.readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#readPostLanguagePostLanguagesPostLanguageIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#readPostLanguagePostLanguagesPostLanguageIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **kotlin.Int**|  |

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostLanguagesPostLanguagesGet"></a>
# **readPostLanguagesPostLanguagesGet**
> kotlin.Array&lt;PostLanguageRead&gt; readPostLanguagesPostLanguagesGet(q, offset, limit)

Read Post Languages

Get all PostLanguage.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PostLanguageRead> = apiInstance.readPostLanguagesPostLanguagesGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#readPostLanguagesPostLanguagesGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#readPostLanguagesPostLanguagesGet")
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

[**kotlin.Array&lt;PostLanguageRead&gt;**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostPostsPostIdGet"></a>
# **readPostPostsPostIdGet**
> PostRead readPostPostsPostIdGet(postId)

Read Post

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val postId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PostRead = apiInstance.readPostPostsPostIdGet(postId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#readPostPostsPostIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#readPostPostsPostIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **kotlin.Int**|  |

### Return type

[**PostRead**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostsPostsGet"></a>
# **readPostsPostsGet**
> kotlin.Array&lt;PostRead&gt; readPostsPostsGet(q, offset, limit)

Read Posts

Get all Post.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<PostRead> = apiInstance.readPostsPostsGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#readPostsPostsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#readPostsPostsGet")
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

[**kotlin.Array&lt;PostRead&gt;**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updatePostLanguagePostLanguagesPostLanguageIdPatch"></a>
# **updatePostLanguagePostLanguagesPostLanguageIdPatch**
> PostLanguageRead updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId)

Update Post Language

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val body : PostLanguageUpdate =  // PostLanguageUpdate | 
val postLanguageId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PostLanguageRead = apiInstance.updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#updatePostLanguagePostLanguagesPostLanguageIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#updatePostLanguagePostLanguagesPostLanguageIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageUpdate**](PostLanguageUpdate.md)|  |
 **postLanguageId** | **kotlin.Int**|  |

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updatePostPostsPostIdPatch"></a>
# **updatePostPostsPostIdPatch**
> PostRead updatePostPostsPostIdPatch(body, postId)

Update Post

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = PostApi()
val body : PostUpdate =  // PostUpdate | 
val postId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : PostRead = apiInstance.updatePostPostsPostIdPatch(body, postId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling PostApi#updatePostPostsPostIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling PostApi#updatePostPostsPostIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostUpdate**](PostUpdate.md)|  |
 **postId** | **kotlin.Int**|  |

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

