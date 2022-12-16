# JbsBackendService.PublicationApi

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

<a name="createPublicationLanguagePublicationLanguagesPost"></a>
# **createPublicationLanguagePublicationLanguagesPost**
> PublicationLanguageRead createPublicationLanguagePublicationLanguagesPost(body)

Create Publication Language

Create a PublicationLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let body = new JbsBackendService.PublicationLanguageCreate(); // PublicationLanguageCreate | 

apiInstance.createPublicationLanguagePublicationLanguagesPost(body, (error, data, response) => {
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
 **body** | [**PublicationLanguageCreate**](PublicationLanguageCreate.md)|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createPublicationPublicationsPost"></a>
# **createPublicationPublicationsPost**
> PublicationRead createPublicationPublicationsPost(body)

Create Publication

Create a Publication.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let body = new JbsBackendService.PublicationCreate(); // PublicationCreate | 

apiInstance.createPublicationPublicationsPost(body, (error, data, response) => {
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
 **body** | [**PublicationCreate**](PublicationCreate.md)|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete"></a>
# **deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete**
> SuccessResponseModel deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId)

Delete Publication Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let publicationLanguageId = 56; // Number | 

apiInstance.deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(publicationLanguageId, (error, data, response) => {
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
 **publicationLanguageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deletePublicationPublicationsPublicationIdDelete"></a>
# **deletePublicationPublicationsPublicationIdDelete**
> SuccessResponseModel deletePublicationPublicationsPublicationIdDelete(publicationId)

Delete Publication

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let publicationId = 56; // Number | 

apiInstance.deletePublicationPublicationsPublicationIdDelete(publicationId, (error, data, response) => {
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
 **publicationId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet"></a>
# **readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet**
> PublicationLanguageRead readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId)

Read Publication Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PublicationApi();
let publicationLanguageId = 56; // Number | 

apiInstance.readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(publicationLanguageId, (error, data, response) => {
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
 **publicationLanguageId** | **Number**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationLanguagesPublicationLanguagesGet"></a>
# **readPublicationLanguagesPublicationLanguagesGet**
> [PublicationLanguageRead] readPublicationLanguagesPublicationLanguagesGet(opts)

Read Publication Languages

Get all PublicationLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PublicationApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPublicationLanguagesPublicationLanguagesGet(opts, (error, data, response) => {
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

[**[PublicationLanguageRead]**](PublicationLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationPublicationsPublicationIdGet"></a>
# **readPublicationPublicationsPublicationIdGet**
> PublicationRead readPublicationPublicationsPublicationIdGet(publicationId)

Read Publication

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PublicationApi();
let publicationId = 56; // Number | 

apiInstance.readPublicationPublicationsPublicationIdGet(publicationId, (error, data, response) => {
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
 **publicationId** | **Number**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readPublicationsPublicationsGet"></a>
# **readPublicationsPublicationsGet**
> [PublicationRead] readPublicationsPublicationsGet(opts)

Read Publications

Get all Publication.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.PublicationApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readPublicationsPublicationsGet(opts, (error, data, response) => {
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

[**[PublicationRead]**](PublicationRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch"></a>
# **updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch**
> PublicationLanguageRead updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId)

Update Publication Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let body = new JbsBackendService.PublicationLanguageUpdate(); // PublicationLanguageUpdate | 
let publicationLanguageId = 56; // Number | 

apiInstance.updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(body, publicationLanguageId, (error, data, response) => {
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
 **body** | [**PublicationLanguageUpdate**](PublicationLanguageUpdate.md)|  | 
 **publicationLanguageId** | **Number**|  | 

### Return type

[**PublicationLanguageRead**](PublicationLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updatePublicationPublicationsPublicationIdPatch"></a>
# **updatePublicationPublicationsPublicationIdPatch**
> PublicationRead updatePublicationPublicationsPublicationIdPatch(body, publicationId)

Update Publication

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.PublicationApi();
let body = new JbsBackendService.PublicationUpdate(); // PublicationUpdate | 
let publicationId = 56; // Number | 

apiInstance.updatePublicationPublicationsPublicationIdPatch(body, publicationId, (error, data, response) => {
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
 **body** | [**PublicationUpdate**](PublicationUpdate.md)|  | 
 **publicationId** | **Number**|  | 

### Return type

[**PublicationRead**](PublicationRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

