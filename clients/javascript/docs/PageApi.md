# JbsBackendService.PageApi

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

<a name="createPageLanguagePageLanguagesPost"></a>
# **createPageLanguagePageLanguagesPost**
> PageLanguageRead createPageLanguagePageLanguagesPost(body)

Create Page Language

Create a PageLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let body = new JbsBackendService.PageLanguageCreate(); // PageLanguageCreate | 

apiInstance.createPageLanguagePageLanguagesPost(body, (error, data, response) => {
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
 **body** | [**PageLanguageCreate**](PageLanguageCreate.md)|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createPagePagesPost"></a>
# **createPagePagesPost**
> PageRead createPagePagesPost(body)

Create Page

Create a Page.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let body = new JbsBackendService.PageCreate(); // PageCreate | 

apiInstance.createPagePagesPost(body, (error, data, response) => {
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
 **body** | [**PageCreate**](PageCreate.md)|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePageLanguagePageLanguagesPageLanguageIdDelete"></a>
# **deletePageLanguagePageLanguagesPageLanguageIdDelete**
> SuccessResponseModel deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId)

Delete Page Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let pageLanguageId = 56; // Number | 

apiInstance.deletePageLanguagePageLanguagesPageLanguageIdDelete(pageLanguageId, (error, data, response) => {
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
 **pageLanguageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deletePagePagesPageIdDelete"></a>
# **deletePagePagesPageIdDelete**
> SuccessResponseModel deletePagePagesPageIdDelete(pageId)

Delete Page

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let pageId = 56; // Number | 

apiInstance.deletePagePagesPageIdDelete(pageId, (error, data, response) => {
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
 **pageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPageLanguagePageLanguagesPageLanguageIdGet"></a>
# **readPageLanguagePageLanguagesPageLanguageIdGet**
> PageLanguageRead readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId)

Read Page Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PageApi();
let pageLanguageId = 56; // Number | 

apiInstance.readPageLanguagePageLanguagesPageLanguageIdGet(pageLanguageId, (error, data, response) => {
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
 **pageLanguageId** | **Number**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPageLanguagesPageLanguagesGet"></a>
# **readPageLanguagesPageLanguagesGet**
> [PageLanguageRead] readPageLanguagesPageLanguagesGet(opts)

Read Page Languages

Get all PageLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PageApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPageLanguagesPageLanguagesGet(opts, (error, data, response) => {
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

[**[PageLanguageRead]**](PageLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPagePagesPageIdGet"></a>
# **readPagePagesPageIdGet**
> PageRead readPagePagesPageIdGet(pageId)

Read Page

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PageApi();
let pageId = 56; // Number | 

apiInstance.readPagePagesPageIdGet(pageId, (error, data, response) => {
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
 **pageId** | **Number**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPagesPagesGet"></a>
# **readPagesPagesGet**
> [PageRead] readPagesPagesGet(opts)

Read Pages

Get all Page.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PageApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPagesPagesGet(opts, (error, data, response) => {
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

[**[PageRead]**](PageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updatePageLanguagePageLanguagesPageLanguageIdPatch"></a>
# **updatePageLanguagePageLanguagesPageLanguageIdPatch**
> PageLanguageRead updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId)

Update Page Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let body = new JbsBackendService.PageLanguageUpdate(); // PageLanguageUpdate | 
let pageLanguageId = 56; // Number | 

apiInstance.updatePageLanguagePageLanguagesPageLanguageIdPatch(body, pageLanguageId, (error, data, response) => {
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
 **body** | [**PageLanguageUpdate**](PageLanguageUpdate.md)|  | 
 **pageLanguageId** | **Number**|  | 

### Return type

[**PageLanguageRead**](PageLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updatePagePagesPageIdPatch"></a>
# **updatePagePagesPageIdPatch**
> PageRead updatePagePagesPageIdPatch(body, pageId)

Update Page

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PageApi();
let body = new JbsBackendService.PageUpdate(); // PageUpdate | 
let pageId = 56; // Number | 

apiInstance.updatePagePagesPageIdPatch(body, pageId, (error, data, response) => {
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
 **body** | [**PageUpdate**](PageUpdate.md)|  | 
 **pageId** | **Number**|  | 

### Return type

[**PageRead**](PageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

