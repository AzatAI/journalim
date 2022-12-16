# MediaApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUploadUploadPost**](MediaApi.md#createUploadUploadPost) | **POST** /upload | Create Upload
[**deleteMediaMediasMediaIdDelete**](MediaApi.md#deleteMediaMediasMediaIdDelete) | **DELETE** /medias/{media_id} | Delete Media
[**readMediaMediasMediaIdGet**](MediaApi.md#readMediaMediasMediaIdGet) | **GET** /medias/{media_id} | Read Media
[**readMediasMediasGet**](MediaApi.md#readMediasMediasGet) | **GET** /medias | Read Medias
[**updateMediaMediasMediaIdPatch**](MediaApi.md#updateMediaMediasMediaIdPatch) | **PATCH** /medias/{media_id} | Update Media

<a name="createUploadUploadPost"></a>
# **createUploadUploadPost**
> GenericFileUploadResponse createUploadUploadPost(file, `public`)

Create Upload

Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   &lt;span style:\&quot;color:red\&quot;&gt;WARN&lt;/span&gt; : Uploading files with same filename might overwrite the existing files.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MediaApi()
val file : kotlin.Array<kotlin.Byte> = file_example // kotlin.Array<kotlin.Byte> | 
val `public` : kotlin.Boolean = true // kotlin.Boolean | 
try {
    val result : GenericFileUploadResponse = apiInstance.createUploadUploadPost(file, `public`)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#createUploadUploadPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#createUploadUploadPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **kotlin.Array&lt;kotlin.Byte&gt;**|  |
 **&#x60;public&#x60;** | **kotlin.Boolean**|  | [optional] [default to false]

### Return type

[**GenericFileUploadResponse**](GenericFileUploadResponse.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

<a name="deleteMediaMediasMediaIdDelete"></a>
# **deleteMediaMediasMediaIdDelete**
> SuccessResponseModel deleteMediaMediasMediaIdDelete(mediaId)

Delete Media

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MediaApi()
val mediaId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteMediaMediasMediaIdDelete(mediaId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#deleteMediaMediasMediaIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#deleteMediaMediasMediaIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readMediaMediasMediaIdGet"></a>
# **readMediaMediasMediaIdGet**
> MediaRead readMediaMediasMediaIdGet(mediaId)

Read Media

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MediaApi()
val mediaId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : MediaRead = apiInstance.readMediaMediasMediaIdGet(mediaId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#readMediaMediasMediaIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#readMediaMediasMediaIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **mediaId** | **kotlin.Int**|  |

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readMediasMediasGet"></a>
# **readMediasMediasGet**
> kotlin.Array&lt;MediaRead&gt; readMediasMediasGet(q, offset, limit)

Read Medias

Get all Media.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MediaApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<MediaRead> = apiInstance.readMediasMediasGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#readMediasMediasGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#readMediasMediasGet")
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

[**kotlin.Array&lt;MediaRead&gt;**](MediaRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateMediaMediasMediaIdPatch"></a>
# **updateMediaMediasMediaIdPatch**
> MediaRead updateMediaMediasMediaIdPatch(body, mediaId)

Update Media

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = MediaApi()
val body : MediaUpdate =  // MediaUpdate | 
val mediaId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : MediaRead = apiInstance.updateMediaMediasMediaIdPatch(body, mediaId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling MediaApi#updateMediaMediasMediaIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling MediaApi#updateMediaMediasMediaIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MediaUpdate**](MediaUpdate.md)|  |
 **mediaId** | **kotlin.Int**|  |

### Return type

[**MediaRead**](MediaRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

