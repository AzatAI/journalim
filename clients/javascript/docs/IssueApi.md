# JbsBackendService.IssueApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createIssueIssuesPost**](IssueApi.md#createIssueIssuesPost) | **POST** /issues | Create Issue
[**createIssueLanguageIssueLanguagesPost**](IssueApi.md#createIssueLanguageIssueLanguagesPost) | **POST** /issue_languages | Create Issue Language
[**deleteIssueIssuesIssueIdDelete**](IssueApi.md#deleteIssueIssuesIssueIdDelete) | **DELETE** /issues/{issue_id} | Delete Issue
[**deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete**](IssueApi.md#deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete) | **DELETE** /issue_languages/{issue_language_id} | Delete Issue Language
[**readIssueIssuesIssueIdGet**](IssueApi.md#readIssueIssuesIssueIdGet) | **GET** /issues/{issue_id} | Read Issue
[**readIssueLanguageIssueLanguagesIssueLanguageIdGet**](IssueApi.md#readIssueLanguageIssueLanguagesIssueLanguageIdGet) | **GET** /issue_languages/{issue_language_id} | Read Issue Language
[**readIssueLanguagesIssueLanguagesGet**](IssueApi.md#readIssueLanguagesIssueLanguagesGet) | **GET** /issue_languages | Read Issue Languages
[**readIssuesIssuesGet**](IssueApi.md#readIssuesIssuesGet) | **GET** /issues | Read Issues
[**updateIssueIssuesIssueIdPatch**](IssueApi.md#updateIssueIssuesIssueIdPatch) | **PATCH** /issues/{issue_id} | Update Issue
[**updateIssueLanguageIssueLanguagesIssueLanguageIdPatch**](IssueApi.md#updateIssueLanguageIssueLanguagesIssueLanguageIdPatch) | **PATCH** /issue_languages/{issue_language_id} | Update Issue Language

<a name="createIssueIssuesPost"></a>
# **createIssueIssuesPost**
> IssueRead createIssueIssuesPost(body)

Create Issue

Create an Issue.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let body = new JbsBackendService.IssueCreate(); // IssueCreate | 

apiInstance.createIssueIssuesPost(body, (error, data, response) => {
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
 **body** | [**IssueCreate**](IssueCreate.md)|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createIssueLanguageIssueLanguagesPost"></a>
# **createIssueLanguageIssueLanguagesPost**
> IssueLanguageRead createIssueLanguageIssueLanguagesPost(body)

Create Issue Language

Create a IssueLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let body = new JbsBackendService.IssueLanguageCreate(); // IssueLanguageCreate | 

apiInstance.createIssueLanguageIssueLanguagesPost(body, (error, data, response) => {
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
 **body** | [**IssueLanguageCreate**](IssueLanguageCreate.md)|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteIssueIssuesIssueIdDelete"></a>
# **deleteIssueIssuesIssueIdDelete**
> SuccessResponseModel deleteIssueIssuesIssueIdDelete(issueId)

Delete Issue

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let issueId = 56; // Number | 

apiInstance.deleteIssueIssuesIssueIdDelete(issueId, (error, data, response) => {
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
 **issueId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete"></a>
# **deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete**
> SuccessResponseModel deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId)

Delete Issue Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let issueLanguageId = 56; // Number | 

apiInstance.deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId, (error, data, response) => {
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
 **issueLanguageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueIssuesIssueIdGet"></a>
# **readIssueIssuesIssueIdGet**
> IssueRead readIssueIssuesIssueIdGet(issueId)

Read Issue

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.IssueApi();
let issueId = 56; // Number | 

apiInstance.readIssueIssuesIssueIdGet(issueId, (error, data, response) => {
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
 **issueId** | **Number**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueLanguageIssueLanguagesIssueLanguageIdGet"></a>
# **readIssueLanguageIssueLanguagesIssueLanguageIdGet**
> IssueLanguageRead readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId)

Read Issue Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.IssueApi();
let issueLanguageId = 56; // Number | 

apiInstance.readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId, (error, data, response) => {
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
 **issueLanguageId** | **Number**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssueLanguagesIssueLanguagesGet"></a>
# **readIssueLanguagesIssueLanguagesGet**
> [IssueLanguageRead] readIssueLanguagesIssueLanguagesGet(opts)

Read Issue Languages

Get all IssueLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.IssueApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readIssueLanguagesIssueLanguagesGet(opts, (error, data, response) => {
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

[**[IssueLanguageRead]**](IssueLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readIssuesIssuesGet"></a>
# **readIssuesIssuesGet**
> [IssueRead] readIssuesIssuesGet(opts)

Read Issues

Get all Issue.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.IssueApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readIssuesIssuesGet(opts, (error, data, response) => {
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

[**[IssueRead]**](IssueRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateIssueIssuesIssueIdPatch"></a>
# **updateIssueIssuesIssueIdPatch**
> IssueRead updateIssueIssuesIssueIdPatch(body, issueId)

Update Issue

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let body = new JbsBackendService.IssueUpdate(); // IssueUpdate | 
let issueId = 56; // Number | 

apiInstance.updateIssueIssuesIssueIdPatch(body, issueId, (error, data, response) => {
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
 **body** | [**IssueUpdate**](IssueUpdate.md)|  | 
 **issueId** | **Number**|  | 

### Return type

[**IssueRead**](IssueRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateIssueLanguageIssueLanguagesIssueLanguageIdPatch"></a>
# **updateIssueLanguageIssueLanguagesIssueLanguageIdPatch**
> IssueLanguageRead updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId)

Update Issue Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.IssueApi();
let body = new JbsBackendService.IssueLanguageUpdate(); // IssueLanguageUpdate | 
let issueLanguageId = 56; // Number | 

apiInstance.updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body, issueLanguageId, (error, data, response) => {
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
 **body** | [**IssueLanguageUpdate**](IssueLanguageUpdate.md)|  | 
 **issueLanguageId** | **Number**|  | 

### Return type

[**IssueLanguageRead**](IssueLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

