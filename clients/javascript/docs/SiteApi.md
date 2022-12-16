# JbsBackendService.SiteApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createSiteLanguageSiteLanguagesPost**](SiteApi.md#createSiteLanguageSiteLanguagesPost) | **POST** /site_languages | Create Site Language
[**createSiteSitesPost**](SiteApi.md#createSiteSitesPost) | **POST** /sites | Create Site
[**deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete**](SiteApi.md#deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete) | **DELETE** /site_languages/{site_language_id} | Delete Site Language
[**deleteSiteSitesSiteIdDelete**](SiteApi.md#deleteSiteSitesSiteIdDelete) | **DELETE** /sites/{site_id} | Delete Site
[**readSiteLanguageSiteLanguagesSiteLanguageIdGet**](SiteApi.md#readSiteLanguageSiteLanguagesSiteLanguageIdGet) | **GET** /site_languages/{site_language_id} | Read Site Language
[**readSiteLanguagesSiteLanguagesGet**](SiteApi.md#readSiteLanguagesSiteLanguagesGet) | **GET** /site_languages | Read Site Languages
[**readSiteSitesSiteIdGet**](SiteApi.md#readSiteSitesSiteIdGet) | **GET** /sites/{site_id} | Read Site
[**readSitesSitesGet**](SiteApi.md#readSitesSitesGet) | **GET** /sites | Read Sites
[**updateSiteLanguageSiteLanguagesSiteLanguageIdPatch**](SiteApi.md#updateSiteLanguageSiteLanguagesSiteLanguageIdPatch) | **PATCH** /site_languages/{site_language_id} | Update Site Language
[**updateSiteSitesSiteIdPatch**](SiteApi.md#updateSiteSitesSiteIdPatch) | **PATCH** /sites/{site_id} | Update Site

<a name="createSiteLanguageSiteLanguagesPost"></a>
# **createSiteLanguageSiteLanguagesPost**
> SiteLanguageRead createSiteLanguageSiteLanguagesPost(body)

Create Site Language

Create a SiteLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let body = new JbsBackendService.SiteLanguageCreate(); // SiteLanguageCreate | 

apiInstance.createSiteLanguageSiteLanguagesPost(body, (error, data, response) => {
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
 **body** | [**SiteLanguageCreate**](SiteLanguageCreate.md)|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="createSiteSitesPost"></a>
# **createSiteSitesPost**
> SiteRead createSiteSitesPost(body)

Create Site

Create a Site.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let body = new JbsBackendService.SiteCreate(); // SiteCreate | 

apiInstance.createSiteSitesPost(body, (error, data, response) => {
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
 **body** | [**SiteCreate**](SiteCreate.md)|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete"></a>
# **deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete**
> SuccessResponseModel deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId)

Delete Site Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let siteLanguageId = 56; // Number | 

apiInstance.deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId, (error, data, response) => {
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
 **siteLanguageId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteSiteSitesSiteIdDelete"></a>
# **deleteSiteSitesSiteIdDelete**
> SuccessResponseModel deleteSiteSitesSiteIdDelete(siteId)

Delete Site

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let siteId = 56; // Number | 

apiInstance.deleteSiteSitesSiteIdDelete(siteId, (error, data, response) => {
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
 **siteId** | **Number**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteLanguageSiteLanguagesSiteLanguageIdGet"></a>
# **readSiteLanguageSiteLanguagesSiteLanguageIdGet**
> SiteLanguageRead readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId)

Read Site Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.SiteApi();
let siteLanguageId = 56; // Number | 

apiInstance.readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId, (error, data, response) => {
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
 **siteLanguageId** | **Number**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteLanguagesSiteLanguagesGet"></a>
# **readSiteLanguagesSiteLanguagesGet**
> [SiteLanguageRead] readSiteLanguagesSiteLanguagesGet(opts)

Read Site Languages

Get all SiteLanguage.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.SiteApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readSiteLanguagesSiteLanguagesGet(opts, (error, data, response) => {
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

[**[SiteLanguageRead]**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSiteSitesSiteIdGet"></a>
# **readSiteSitesSiteIdGet**
> SiteRead readSiteSitesSiteIdGet(siteId)

Read Site

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.SiteApi();
let siteId = 56; // Number | 

apiInstance.readSiteSitesSiteIdGet(siteId, (error, data, response) => {
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
 **siteId** | **Number**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readSitesSitesGet"></a>
# **readSitesSitesGet**
> [SiteRead] readSitesSitesGet(opts)

Read Sites

Get all Site.

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.SiteApi();
let opts = { 
  'q': "q_example", // String | 
  'offset': 0, // Number | 
  'limit': 100 // Number | 
};
apiInstance.readSitesSitesGet(opts, (error, data, response) => {
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

[**[SiteRead]**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateSiteLanguageSiteLanguagesSiteLanguageIdPatch"></a>
# **updateSiteLanguageSiteLanguagesSiteLanguageIdPatch**
> SiteLanguageRead updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId)

Update Site Language

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let body = new JbsBackendService.SiteLanguageUpdate(); // SiteLanguageUpdate | 
let siteLanguageId = 56; // Number | 

apiInstance.updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId, (error, data, response) => {
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
 **body** | [**SiteLanguageUpdate**](SiteLanguageUpdate.md)|  | 
 **siteLanguageId** | **Number**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="updateSiteSitesSiteIdPatch"></a>
# **updateSiteSitesSiteIdPatch**
> SiteRead updateSiteSitesSiteIdPatch(body, siteId)

Update Site

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';
let defaultClient = JbsBackendService.ApiClient.instance;

// Configure OAuth2 access token for authorization: OAuth2PasswordBearer
let OAuth2PasswordBearer = defaultClient.authentications['OAuth2PasswordBearer'];
OAuth2PasswordBearer.accessToken = 'YOUR ACCESS TOKEN';

let apiInstance = new JbsBackendService.SiteApi();
let body = new JbsBackendService.SiteUpdate(); // SiteUpdate | 
let siteId = 56; // Number | 

apiInstance.updateSiteSitesSiteIdPatch(body, siteId, (error, data, response) => {
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
 **body** | [**SiteUpdate**](SiteUpdate.md)|  | 
 **siteId** | **Number**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

