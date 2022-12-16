# swagger.api.SiteApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

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

# **createSiteLanguageSiteLanguagesPost**
> SiteLanguageRead createSiteLanguageSiteLanguagesPost(body)

Create Site Language

Create a SiteLanguage.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var body = new SiteLanguageCreate(); // SiteLanguageCreate | 

try {
    var result = api_instance.createSiteLanguageSiteLanguagesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->createSiteLanguageSiteLanguagesPost: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSiteSitesPost**
> SiteRead createSiteSitesPost(body)

Create Site

Create a Site.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var body = new SiteCreate(); // SiteCreate | 

try {
    var result = api_instance.createSiteSitesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->createSiteSitesPost: $e\n");
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete**
> SuccessResponseModel deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId)

Delete Site Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var siteLanguageId = 56; // int | 

try {
    var result = api_instance.deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete(siteLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->deleteSiteLanguageSiteLanguagesSiteLanguageIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteSiteSitesSiteIdDelete**
> SuccessResponseModel deleteSiteSitesSiteIdDelete(siteId)

Delete Site

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var siteId = 56; // int | 

try {
    var result = api_instance.deleteSiteSitesSiteIdDelete(siteId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->deleteSiteSitesSiteIdDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **int**|  | 

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readSiteLanguageSiteLanguagesSiteLanguageIdGet**
> SiteLanguageRead readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId)

Read Site Language

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SiteApi();
var siteLanguageId = 56; // int | 

try {
    var result = api_instance.readSiteLanguageSiteLanguagesSiteLanguageIdGet(siteLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->readSiteLanguageSiteLanguagesSiteLanguageIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteLanguageId** | **int**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readSiteLanguagesSiteLanguagesGet**
> List<SiteLanguageRead> readSiteLanguagesSiteLanguagesGet(q, offset, limit)

Read Site Languages

Get all SiteLanguage.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SiteApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readSiteLanguagesSiteLanguagesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->readSiteLanguagesSiteLanguagesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<SiteLanguageRead>**](SiteLanguageRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readSiteSitesSiteIdGet**
> SiteRead readSiteSitesSiteIdGet(siteId)

Read Site

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SiteApi();
var siteId = 56; // int | 

try {
    var result = api_instance.readSiteSitesSiteIdGet(siteId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->readSiteSitesSiteIdGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteId** | **int**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **readSitesSitesGet**
> List<SiteRead> readSitesSitesGet(q, offset, limit)

Read Sites

Get all Site.

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new SiteApi();
var q = q_example; // String | 
var offset = 56; // int | 
var limit = 56; // int | 

try {
    var result = api_instance.readSitesSitesGet(q, offset, limit);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->readSitesSitesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**|  | [optional] 
 **offset** | **int**|  | [optional] [default to 0]
 **limit** | **int**|  | [optional] [default to 100]

### Return type

[**List<SiteRead>**](SiteRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSiteLanguageSiteLanguagesSiteLanguageIdPatch**
> SiteLanguageRead updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId)

Update Site Language

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var body = new SiteLanguageUpdate(); // SiteLanguageUpdate | 
var siteLanguageId = 56; // int | 

try {
    var result = api_instance.updateSiteLanguageSiteLanguagesSiteLanguageIdPatch(body, siteLanguageId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->updateSiteLanguageSiteLanguagesSiteLanguageIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteLanguageUpdate**](SiteLanguageUpdate.md)|  | 
 **siteLanguageId** | **int**|  | 

### Return type

[**SiteLanguageRead**](SiteLanguageRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSiteSitesSiteIdPatch**
> SiteRead updateSiteSitesSiteIdPatch(body, siteId)

Update Site

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure OAuth2 access token for authorization: OAuth2PasswordBearer
//swagger.api.Configuration.accessToken = 'YOUR_ACCESS_TOKEN';

var api_instance = new SiteApi();
var body = new SiteUpdate(); // SiteUpdate | 
var siteId = 56; // int | 

try {
    var result = api_instance.updateSiteSitesSiteIdPatch(body, siteId);
    print(result);
} catch (e) {
    print("Exception when calling SiteApi->updateSiteSitesSiteIdPatch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SiteUpdate**](SiteUpdate.md)|  | 
 **siteId** | **int**|  | 

### Return type

[**SiteRead**](SiteRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

