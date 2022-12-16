# AttachmentApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createAttachmentAttachmentsPost**](AttachmentApi.md#createAttachmentAttachmentsPost) | **POST** /attachments | Create Attachment
[**deleteAttachmentAttachmentsAttachmentIdDelete**](AttachmentApi.md#deleteAttachmentAttachmentsAttachmentIdDelete) | **DELETE** /attachments/{attachment_id} | Delete Attachment
[**readAttachmentAttachmentsAttachmentIdGet**](AttachmentApi.md#readAttachmentAttachmentsAttachmentIdGet) | **GET** /attachments/{attachment_id} | Read Attachment
[**readAttachmentsAttachmentsGet**](AttachmentApi.md#readAttachmentsAttachmentsGet) | **GET** /attachments | Read Attachments
[**updateAttachmentAttachmentsAttachmentIdPatch**](AttachmentApi.md#updateAttachmentAttachmentsAttachmentIdPatch) | **PATCH** /attachments/{attachment_id} | Update Attachment

<a name="createAttachmentAttachmentsPost"></a>
# **createAttachmentAttachmentsPost**
> AttachmentRead createAttachmentAttachmentsPost(body)

Create Attachment

Create a Attachment.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = AttachmentApi()
val body : AttachmentCreate =  // AttachmentCreate | 
try {
    val result : AttachmentRead = apiInstance.createAttachmentAttachmentsPost(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AttachmentApi#createAttachmentAttachmentsPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AttachmentApi#createAttachmentAttachmentsPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentCreate**](AttachmentCreate.md)|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deleteAttachmentAttachmentsAttachmentIdDelete"></a>
# **deleteAttachmentAttachmentsAttachmentIdDelete**
> SuccessResponseModel deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId)

Delete Attachment

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = AttachmentApi()
val attachmentId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : SuccessResponseModel = apiInstance.deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AttachmentApi#deleteAttachmentAttachmentsAttachmentIdDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AttachmentApi#deleteAttachmentAttachmentsAttachmentIdDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **kotlin.Int**|  |

### Return type

[**SuccessResponseModel**](SuccessResponseModel.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readAttachmentAttachmentsAttachmentIdGet"></a>
# **readAttachmentAttachmentsAttachmentIdGet**
> AttachmentRead readAttachmentAttachmentsAttachmentIdGet(attachmentId)

Read Attachment

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = AttachmentApi()
val attachmentId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : AttachmentRead = apiInstance.readAttachmentAttachmentsAttachmentIdGet(attachmentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AttachmentApi#readAttachmentAttachmentsAttachmentIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AttachmentApi#readAttachmentAttachmentsAttachmentIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **kotlin.Int**|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="readAttachmentsAttachmentsGet"></a>
# **readAttachmentsAttachmentsGet**
> kotlin.Array&lt;AttachmentRead&gt; readAttachmentsAttachmentsGet(q, offset, limit)

Read Attachments

Get all Attachment.

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = AttachmentApi()
val q : kotlin.String = q_example // kotlin.String | 
val offset : kotlin.Int = 56 // kotlin.Int | 
val limit : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : kotlin.Array<AttachmentRead> = apiInstance.readAttachmentsAttachmentsGet(q, offset, limit)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AttachmentApi#readAttachmentsAttachmentsGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AttachmentApi#readAttachmentsAttachmentsGet")
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

[**kotlin.Array&lt;AttachmentRead&gt;**](AttachmentRead.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="updateAttachmentAttachmentsAttachmentIdPatch"></a>
# **updateAttachmentAttachmentsAttachmentIdPatch**
> AttachmentRead updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId)

Update Attachment

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = AttachmentApi()
val body : AttachmentUpdate =  // AttachmentUpdate | 
val attachmentId : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : AttachmentRead = apiInstance.updateAttachmentAttachmentsAttachmentIdPatch(body, attachmentId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling AttachmentApi#updateAttachmentAttachmentsAttachmentIdPatch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling AttachmentApi#updateAttachmentAttachmentsAttachmentIdPatch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AttachmentUpdate**](AttachmentUpdate.md)|  |
 **attachmentId** | **kotlin.Int**|  |

### Return type

[**AttachmentRead**](AttachmentRead.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

