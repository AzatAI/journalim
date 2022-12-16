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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
PostLanguageCreate body = new PostLanguageCreate(); // PostLanguageCreate | 
try {
    PostLanguageRead result = apiInstance.createPostLanguagePostLanguagesPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#createPostLanguagePostLanguagesPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
PostCreate body = new PostCreate(); // PostCreate | 
try {
    PostRead result = apiInstance.createPostPostsPost(body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#createPostPostsPost");
    e.printStackTrace();
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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
Integer postLanguageId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#deletePostLanguagePostLanguagesPostLanguageIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
Integer postId = 56; // Integer | 
try {
    SuccessResponseModel result = apiInstance.deletePostPostsPostIdDelete(postId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#deletePostPostsPostIdDelete");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PostApi;


PostApi apiInstance = new PostApi();
Integer postLanguageId = 56; // Integer | 
try {
    PostLanguageRead result = apiInstance.readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#readPostLanguagePostLanguagesPostLanguageIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **Integer**|  |

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostLanguagesPostLanguagesGet"></a>
# **readPostLanguagesPostLanguagesGet**
> List&lt;PostLanguageRead&gt; readPostLanguagesPostLanguagesGet(q, offset, limit)

Read Post Languages

Get all PostLanguage.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PostApi;


PostApi apiInstance = new PostApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PostLanguageRead> result = apiInstance.readPostLanguagesPostLanguagesGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#readPostLanguagesPostLanguagesGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional]
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]

### Return type

[**List&lt;PostLanguageRead&gt;**](PostLanguageRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PostApi;


PostApi apiInstance = new PostApi();
Integer postId = 56; // Integer | 
try {
    PostRead result = apiInstance.readPostPostsPostIdGet(postId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#readPostPostsPostIdGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **Integer**|  |

### Return type

[**PostRead**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostsPostsGet"></a>
# **readPostsPostsGet**
> List&lt;PostRead&gt; readPostsPostsGet(q, offset, limit)

Read Posts

Get all Post.

### Example
```java
// Import classes:
//import io.swagger.client.ApiException;
//import io.swagger.client.api.PostApi;


PostApi apiInstance = new PostApi();
String q = "q_example"; // String | 
Integer offset = 0; // Integer | 
Integer limit = 100; // Integer | 
try {
    List<PostRead> result = apiInstance.readPostsPostsGet(q, offset, limit);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#readPostsPostsGet");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional]
 **offset** | **Integer**|  | [optional] [default to 0]
 **limit** | **Integer**|  | [optional] [default to 100]

### Return type

[**List&lt;PostRead&gt;**](PostRead.md)

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
PostLanguageUpdate body = new PostLanguageUpdate(); // PostLanguageUpdate | 
Integer postLanguageId = 56; // Integer | 
try {
    PostLanguageRead result = apiInstance.updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#updatePostLanguagePostLanguagesPostLanguageIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageUpdate**](PostLanguageUpdate.md)|  |
 **postLanguageId** | **Integer**|  |

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
```java
// Import classes:
//import io.swagger.client.ApiClient;
//import io.swagger.client.ApiException;
//import io.swagger.client.Configuration;
//import io.swagger.client.auth.*;
//import io.swagger.client.api.PostApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
OAuth OAuth2PasswordBearer = (OAuth) defaultClient.getAuthentication("OAuth2PasswordBearer");
OAuth2PasswordBearer.setAccessToken("YOUR ACCESS TOKEN");

PostApi apiInstance = new PostApi();
PostUpdate body = new PostUpdate(); // PostUpdate | 
Integer postId = 56; // Integer | 
try {
    PostRead result = apiInstance.updatePostPostsPostIdPatch(body, postId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling PostApi#updatePostPostsPostIdPatch");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostUpdate**](PostUpdate.md)|  |
 **postId** | **Integer**|  |

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

