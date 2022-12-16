# JbsBackendService.LanguageApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createLanguageLanguagesPost**](LanguageApi.md#createLanguageLanguagesPost) | **POST** /languages | Create Language
[**deleteLanguageLanguagesLanguageIdDelete**](LanguageApi.md#deleteLanguageLanguagesLanguageIdDelete) | **DELETE** /languages/{language_id} | Delete Language
[**readLanguageLanguagesLanguageIdGet**](LanguageApi.md#readLanguageLanguagesLanguageIdGet) | **GET** /languages/{language_id} | Read Language
[**readLanguagesLanguagesGet**](LanguageApi.md#readLanguagesLanguagesGet) | **GET** /languages | Read Languages
[**updateLanguageLanguagesLanguageIdPatch**](LanguageApi.md#updateLanguageLanguagesLanguageIdPatch) | **PATCH** /languages/{language_id} | Update Language

<a name="createLanguageLanguagesPost"></a>
# **createLanguageLanguagesPost**
> LanguageRead createLanguageLanguagesPost(body)

Create Language

Create a Language.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.LanguageApi();
let body = new JbsBackendService.LanguageCreate(); // LanguageCreate | 

apiInstance.createLanguageLanguagesPost(body, (error, data, response) => {
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
 **body** | [**LanguageCreate**](LanguageCreate.md)|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteLanguageLanguagesLanguageIdDelete"></a>
# **deleteLanguageLanguagesLanguageIdDelete**
> SuccessResponseModel deleteLanguageLanguagesLanguageIdDelete(languageId)

Delete Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.LanguageApi();
let languageId = 56; // Number | 

apiInstance.deleteLanguageLanguagesLanguageIdDelete(languageId, (error, data, response) => {
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
 **languageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readLanguageLanguagesLanguageIdGet"></a>
# **readLanguageLanguagesLanguageIdGet**
> LanguageRead readLanguageLanguagesLanguageIdGet(languageId)

Read Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.LanguageApi();
let languageId = 56; // Number | 

apiInstance.readLanguageLanguagesLanguageIdGet(languageId, (error, data, response) => {
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
 **languageId** | **Number**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readLanguagesLanguagesGet"></a>
# **readLanguagesLanguagesGet**
> [LanguageRead] readLanguagesLanguagesGet(opts)

Read Languages

Get all Language.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.LanguageApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readLanguagesLanguagesGet(opts, (error, data, response) => {
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

[**[LanguageRead]**](LanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateLanguageLanguagesLanguageIdPatch"></a>
# **updateLanguageLanguagesLanguageIdPatch**
> LanguageRead updateLanguageLanguagesLanguageIdPatch(body, languageId)

Update Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.LanguageApi();
let body = new JbsBackendService.LanguageUpdate(); // LanguageUpdate | 
let languageId = 56; // Number | 

apiInstance.updateLanguageLanguagesLanguageIdPatch(body, languageId, (error, data, response) => {
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
 **body** | [**LanguageUpdate**](LanguageUpdate.md)|  | 
 **languageId** | **Number**|  | 

### Return type

[**LanguageRead**](LanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

