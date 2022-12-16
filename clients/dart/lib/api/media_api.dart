part of swagger.api;



class MediaApi {
  final ApiClient apiClient;

  MediaApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create Upload
  ///
  /// Upload a file to the server.   This file later can be served to user either publicly or privately(for signed-in users only)   Hints: Private files can be used for creating new issue attachments (PDFs)!   &lt;span style:\&quot;color:red\&quot;&gt;WARN&lt;/span&gt; : Uploading files with same filename might overwrite the existing files.
  Future<GenericFileUploadResponse> createUploadUploadPost(String file, { bool public }) async {
    Object postBody = null;

    // verify required params are set
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }

    // create path and map variables
    String path = "/upload".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(public != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "public", public));
    }
    
    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["OAuth2PasswordBearer"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = file.field;
        mp.files.add(file);
      }
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
          apiClient.deserialize(response.body, 'GenericFileUploadResponse') as GenericFileUploadResponse ;
    } else {
      return null;
    }
  }
  /// Delete Media
  ///
  /// 
  Future<SuccessResponseModel> deleteMediaMediasMediaIdDelete(int mediaId) async {
    Object postBody = null;

    // verify required params are set
    if(mediaId == null) {
     throw new ApiException(400, "Missing required param: mediaId");
    }

    // create path and map variables
    String path = "/medias/{media_id}".replaceAll("{format}","json").replaceAll("{" + "media_id" + "}", mediaId.toString());

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
  /// Read Media
  ///
  /// 
  Future<MediaRead> readMediaMediasMediaIdGet(int mediaId) async {
    Object postBody = null;

    // verify required params are set
    if(mediaId == null) {
     throw new ApiException(400, "Missing required param: mediaId");
    }

    // create path and map variables
    String path = "/medias/{media_id}".replaceAll("{format}","json").replaceAll("{" + "media_id" + "}", mediaId.toString());

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
          apiClient.deserialize(response.body, 'MediaRead') as MediaRead ;
    } else {
      return null;
    }
  }
  /// Read Medias
  ///
  /// Get all Media.
  Future<List<MediaRead>> readMediasMediasGet({ String q, int offset, int limit }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/medias".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<MediaRead>') as List).map((item) => item as MediaRead).toList();
    } else {
      return null;
    }
  }
  /// Update Media
  ///
  /// 
  Future<MediaRead> updateMediaMediasMediaIdPatch(MediaUpdate body, int mediaId) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(mediaId == null) {
     throw new ApiException(400, "Missing required param: mediaId");
    }

    // create path and map variables
    String path = "/medias/{media_id}".replaceAll("{format}","json").replaceAll("{" + "media_id" + "}", mediaId.toString());

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
          apiClient.deserialize(response.body, 'MediaRead') as MediaRead ;
    } else {
      return null;
    }
  }
}
