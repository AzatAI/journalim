# swagger.api.DefaultApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingPingGet**](DefaultApi.md#pingPingGet) | **GET** /ping | Ping

# **pingPingGet**
> Object pingPingGet()

Ping

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new DefaultApi();

try {
    var result = api_instance.pingPingGet();
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->pingPingGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Object**](Object.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

