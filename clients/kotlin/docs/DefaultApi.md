# DefaultApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingPingGet**](DefaultApi.md#pingPingGet) | **GET** /ping | Ping

<a name="pingPingGet"></a>
# **pingPingGet**
> kotlin.Any pingPingGet()

Ping

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = DefaultApi()
try {
    val result : kotlin.Any = apiInstance.pingPingGet()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling DefaultApi#pingPingGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling DefaultApi#pingPingGet")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**kotlin.Any**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

