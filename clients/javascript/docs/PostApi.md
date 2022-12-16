# JbsBackendService.PostApi

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let body = new JbsBackendService.PostLanguageCreate(); // PostLanguageCreate | 

apiInstance.createPostLanguagePostLanguagesPost(body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let body = new JbsBackendService.PostCreate(); // PostCreate | 

apiInstance.createPostPostsPost(body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let postLanguageId = 56; // Number | 

apiInstance.deletePostLanguagePostLanguagesPostLanguageIdDelete(postLanguageId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **Number**|  | 

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let postId = 56; // Number | 

apiInstance.deletePostPostsPostIdDelete(postId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **Number**|  | 

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PostApi();
let postLanguageId = 56; // Number | 

apiInstance.readPostLanguagePostLanguagesPostLanguageIdGet(postLanguageId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postLanguageId** | **Number**|  | 

### Return type

[**PostLanguageRead**](PostLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostLanguagesPostLanguagesGet"></a>
# **readPostLanguagesPostLanguagesGet**
> [PostLanguageRead] readPostLanguagesPostLanguagesGet(opts)

Read Post Languages

Get all PostLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PostApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPostLanguagesPostLanguagesGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **Number**|  | [optional] [default to 0]
 **limit** | **Number**|  | [optional] [default to 100]

### Return type

[**[PostLanguageRead]**](PostLanguageRead.md)

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PostApi();
let postId = 56; // Number | 

apiInstance.readPostPostsPostIdGet(postId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postId** | **Number**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPostsPostsGet"></a>
# **readPostsPostsGet**
> [PostRead] readPostsPostsGet(opts)

Read Posts

Get all Post.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PostApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPostsPostsGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **Number**|  | [optional] [default to 0]
 **limit** | **Number**|  | [optional] [default to 100]

### Return type

[**[PostRead]**](PostRead.md)

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let body = new JbsBackendService.PostLanguageUpdate(); // PostLanguageUpdate | 
let postLanguageId = 56; // Number | 

apiInstance.updatePostLanguagePostLanguagesPostLanguageIdPatch(body, postLanguageId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostLanguageUpdate**](PostLanguageUpdate.md)|  | 
 **postLanguageId** | **Number**|  | 

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
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PostApi();
let body = new JbsBackendService.PostUpdate(); // PostUpdate | 
let postId = 56; // Number | 

apiInstance.updatePostPostsPostIdPatch(body, postId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PostUpdate**](PostUpdate.md)|  | 
 **postId** | **Number**|  | 

### Return type

[**PostRead**](PostRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

