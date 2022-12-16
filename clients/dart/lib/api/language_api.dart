part of swagger.api;



class LanguageApi {
  final ApiClient apiClient;

  LanguageApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Language
  ///
  /// Create a Language.
  Future<LanguageRead> createLanguageLanguagesPost(LanguageCreate body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/languages".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2PasswordBearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
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
          apiClient.deserialize(response.body, 'LanguageRead') as LanguageRead ;
    } else {
      return null;
    }
  }
  /// Delete Language
  ///
  /// 
  Future<SuccessResponseModel> deleteLanguageLanguagesLanguageIdDelete(int languageId) async {
    Object postBody = null;

    // verify required params are set
    if(languageId == null) {
     throw new ApiException(400, "Missing required param: languageId");
    }

    // create path and map variables
    String path = "/languages/{language_id}".replaceAll("{format}","json").replaceAll("{" + "language_id" + "}", languageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2PasswordBearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
          apiClient.deserialize(response.body, 'SuccessResponseModel') as SuccessResponseModel ;
    } else {
      return null;
    }
  }
  /// Read Language
  ///
  /// 
  Future<LanguageRead> readLanguageLanguagesLanguageIdGet(int languageId) async {
    Object postBody = null;

    // verify required params are set
    if(languageId == null) {
     throw new ApiException(400, "Missing required param: languageId");
    }

    // create path and map variables
    String path = "/languages/{language_id}".replaceAll("{format}","json").replaceAll("{" + "language_id" + "}", languageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
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
          apiClient.deserialize(response.body, 'LanguageRead') as LanguageRead ;
    } else {
      return null;
    }
  }
  /// Read Languages
  ///
  /// Get all Language.
  Future<List<LanguageRead>> readLanguagesLanguagesGet({ String q, int offset, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/languages".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(q != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "q", q));
    }
    if(offset != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "offset", offset));
    }
    if(limit != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "limit", limit));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
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
        (apiClient.deserialize(response.body, 'List<LanguageRead>') as List).map((item) => item as LanguageRead).toList();
    } else {
      return null;
    }
  }
  /// Update Language
  ///
  /// 
  Future<LanguageRead> updateLanguageLanguagesLanguageIdPatch(LanguageUpdate body, int languageId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(languageId == null) {
     throw new ApiException(400, "Missing required param: languageId");
    }

    // create path and map variables
    String path = "/languages/{language_id}".replaceAll("{format}","json").replaceAll("{" + "language_id" + "}", languageId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2PasswordBearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
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
          apiClient.deserialize(response.body, 'LanguageRead') as LanguageRead ;
    } else {
      return null;
    }
  }
}
