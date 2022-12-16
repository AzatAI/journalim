part of swagger.api;



class PublicationApi {
  final ApiClient apiClient;

  PublicationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Publication Language
  ///
  /// Create a PublicationLanguage.
  Future<PublicationLanguageRead> createPublicationLanguagePublicationLanguagesPost(PublicationLanguageCreate body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/publication_languages".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PublicationLanguageRead') as PublicationLanguageRead ;
    } else {
      return null;
    }
  }
  /// Create Publication
  ///
  /// Create a Publication.
  Future<PublicationRead> createPublicationPublicationsPost(PublicationCreate body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/publications".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PublicationRead') as PublicationRead ;
    } else {
      return null;
    }
  }
  /// Delete Publication Language
  ///
  /// 
  Future<SuccessResponseModel> deletePublicationLanguagePublicationLanguagesPublicationLanguageIdDelete(int publicationLanguageId) async {
    Object postBody = null;

    // verify required params are set
    if(publicationLanguageId == null) {
     throw new ApiException(400, "Missing required param: publicationLanguageId");
    }

    // create path and map variables
    String path = "/publication_languages/{publication_language_id}".replaceAll("{format}","json").replaceAll("{" + "publication_language_id" + "}", publicationLanguageId.toString());

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
  /// Delete Publication
  ///
  /// 
  Future<SuccessResponseModel> deletePublicationPublicationsPublicationIdDelete(int publicationId) async {
    Object postBody = null;

    // verify required params are set
    if(publicationId == null) {
     throw new ApiException(400, "Missing required param: publicationId");
    }

    // create path and map variables
    String path = "/publications/{publication_id}".replaceAll("{format}","json").replaceAll("{" + "publication_id" + "}", publicationId.toString());

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
  /// Read Publication Language
  ///
  /// 
  Future<PublicationLanguageRead> readPublicationLanguagePublicationLanguagesPublicationLanguageIdGet(int publicationLanguageId) async {
    Object postBody = null;

    // verify required params are set
    if(publicationLanguageId == null) {
     throw new ApiException(400, "Missing required param: publicationLanguageId");
    }

    // create path and map variables
    String path = "/publication_languages/{publication_language_id}".replaceAll("{format}","json").replaceAll("{" + "publication_language_id" + "}", publicationLanguageId.toString());

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
          apiClient.deserialize(response.body, 'PublicationLanguageRead') as PublicationLanguageRead ;
    } else {
      return null;
    }
  }
  /// Read Publication Languages
  ///
  /// Get all PublicationLanguage.
  Future<List<PublicationLanguageRead>> readPublicationLanguagesPublicationLanguagesGet({ String q, int offset, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/publication_languages".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<PublicationLanguageRead>') as List).map((item) => item as PublicationLanguageRead).toList();
    } else {
      return null;
    }
  }
  /// Read Publication
  ///
  /// 
  Future<PublicationRead> readPublicationPublicationsPublicationIdGet(int publicationId) async {
    Object postBody = null;

    // verify required params are set
    if(publicationId == null) {
     throw new ApiException(400, "Missing required param: publicationId");
    }

    // create path and map variables
    String path = "/publications/{publication_id}".replaceAll("{format}","json").replaceAll("{" + "publication_id" + "}", publicationId.toString());

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
          apiClient.deserialize(response.body, 'PublicationRead') as PublicationRead ;
    } else {
      return null;
    }
  }
  /// Read Publications
  ///
  /// Get all Publication.
  Future<List<PublicationRead>> readPublicationsPublicationsGet({ String q, int offset, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/publications".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<PublicationRead>') as List).map((item) => item as PublicationRead).toList();
    } else {
      return null;
    }
  }
  /// Update Publication Language
  ///
  /// 
  Future<PublicationLanguageRead> updatePublicationLanguagePublicationLanguagesPublicationLanguageIdPatch(PublicationLanguageUpdate body, int publicationLanguageId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(publicationLanguageId == null) {
     throw new ApiException(400, "Missing required param: publicationLanguageId");
    }

    // create path and map variables
    String path = "/publication_languages/{publication_language_id}".replaceAll("{format}","json").replaceAll("{" + "publication_language_id" + "}", publicationLanguageId.toString());

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
          apiClient.deserialize(response.body, 'PublicationLanguageRead') as PublicationLanguageRead ;
    } else {
      return null;
    }
  }
  /// Update Publication
  ///
  /// 
  Future<PublicationRead> updatePublicationPublicationsPublicationIdPatch(PublicationUpdate body, int publicationId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(publicationId == null) {
     throw new ApiException(400, "Missing required param: publicationId");
    }

    // create path and map variables
    String path = "/publications/{publication_id}".replaceAll("{format}","json").replaceAll("{" + "publication_id" + "}", publicationId.toString());

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
          apiClient.deserialize(response.body, 'PublicationRead') as PublicationRead ;
    } else {
      return null;
    }
  }
}
