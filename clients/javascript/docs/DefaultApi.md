# JbsBackendService.DefaultApi

All URIs are relative to *http://journalim.gepsoz.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**pingPingGet**](DefaultApi.md#pingPingGet) | **GET** /ping | Ping

<a name="pingPingGet"></a>
# **pingPingGet**
> Object pingPingGet()

Ping

### Example
```javascript
import {JbsBackendService} from 'jbs_backend_service';

let apiInstance = new JbsBackendService.DefaultApi();
apiInstance.pingPingGet((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

