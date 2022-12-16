part of swagger.api;



class TokenApi {
  final ApiClient apiClient;

  TokenApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Token
  ///
  /// 
  Future<Token> createTokenTokenPost(String grantType, String username, String password, String scope, String clientId, String clientSecret) async {
    Object postBody = null;

    // verify required params are set
    if(grantType == null) {
     throw new ApiException(400, "Missing required param: grantType");
    }
    if(username == null) {
     throw new ApiException(400, "Missing required param: username");
    }
    if(password == null) {
     throw new ApiException(400, "Missing required param: password");
    }
    if(scope == null) {
     throw new ApiException(400, "Missing required param: scope");
    }
    if(clientId == null) {
     throw new ApiException(400, "Missing required param: clientId");
    }
    if(clientSecret == null) {
     throw new ApiException(400, "Missing required param: clientSecret");
    }

    // create path and map variables
    String path = "/token".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/x-www-form-urlencoded"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (grantType != null) {
        hasFields = true;
        mp.fields['grant_type'] = parameterToString(grantType);
      }
      if (username != null) {
        hasFields = true;
        mp.fields['username'] = parameterToString(username);
      }
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = parameterToString(password);
      }
      if (scope != null) {
        hasFields = true;
        mp.fields['scope'] = parameterToString(scope);
      }
      if (clientId != null) {
        hasFields = true;
        mp.fields['client_id'] = parameterToString(clientId);
      }
      if (clientSecret != null) {
        hasFields = true;
        mp.fields['client_secret'] = parameterToString(clientSecret);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (grantType != null)
        formParams['grant_type'] = parameterToString(grantType);
if (username != null)
        formParams['username'] = parameterToString(username);
if (password != null)
        formParams['password'] = parameterToString(password);
if (scope != null)
        formParams['scope'] = parameterToString(scope);
if (clientId != null)
        formParams['client_id'] = parameterToString(clientId);
if (clientSecret != null)
        formParams['client_secret'] = parameterToString(clientSecret);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Token') as Token ;
    } else {
      return null;
    }
  }
}
