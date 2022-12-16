part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "http://journalim.gepsoz.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['OAuth2PasswordBearer'] = new OAuth();
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AnyOfGenericFileUploadResponsePath':
          return new AnyOfGenericFileUploadResponsePath.fromJson(value);
        case 'AnyOfValidationErrorLocItems':
          return new AnyOfValidationErrorLocItems.fromJson(value);
        case 'AttachmentCreate':
          return new AttachmentCreate.fromJson(value);
        case 'AttachmentRead':
          return new AttachmentRead.fromJson(value);
        case 'AttachmentUpdate':
          return new AttachmentUpdate.fromJson(value);
        case 'BodyCreateTokenTokenPost':
          return new BodyCreateTokenTokenPost.fromJson(value);
        case 'BodyCreateUploadUploadPost':
          return new BodyCreateUploadUploadPost.fromJson(value);
        case 'ErrorResponseModel':
          return new ErrorResponseModel.fromJson(value);
        case 'GenericFileUploadResponse':
          return new GenericFileUploadResponse.fromJson(value);
        case 'HTTPValidationError':
          return new HTTPValidationError.fromJson(value);
        case 'IssueCreate':
          return new IssueCreate.fromJson(value);
        case 'IssueLanguageCreate':
          return new IssueLanguageCreate.fromJson(value);
        case 'IssueLanguageRead':
          return new IssueLanguageRead.fromJson(value);
        case 'IssueLanguageUpdate':
          return new IssueLanguageUpdate.fromJson(value);
        case 'IssueRead':
          return new IssueRead.fromJson(value);
        case 'IssueUpdate':
          return new IssueUpdate.fromJson(value);
        case 'LanguageCreate':
          return new LanguageCreate.fromJson(value);
        case 'LanguageRead':
          return new LanguageRead.fromJson(value);
        case 'LanguageUpdate':
          return new LanguageUpdate.fromJson(value);
        case 'MediaRead':
          return new MediaRead.fromJson(value);
        case 'MediaUpdate':
          return new MediaUpdate.fromJson(value);
        case 'PageCreate':
          return new PageCreate.fromJson(value);
        case 'PageLanguageCreate':
          return new PageLanguageCreate.fromJson(value);
        case 'PageLanguageRead':
          return new PageLanguageRead.fromJson(value);
        case 'PageLanguageUpdate':
          return new PageLanguageUpdate.fromJson(value);
        case 'PageRead':
          return new PageRead.fromJson(value);
        case 'PageUpdate':
          return new PageUpdate.fromJson(value);
        case 'PostCreate':
          return new PostCreate.fromJson(value);
        case 'PostLanguageCreate':
          return new PostLanguageCreate.fromJson(value);
        case 'PostLanguageRead':
          return new PostLanguageRead.fromJson(value);
        case 'PostLanguageUpdate':
          return new PostLanguageUpdate.fromJson(value);
        case 'PostRead':
          return new PostRead.fromJson(value);
        case 'PostUpdate':
          return new PostUpdate.fromJson(value);
        case 'PublicationCreate':
          return new PublicationCreate.fromJson(value);
        case 'PublicationLanguageCreate':
          return new PublicationLanguageCreate.fromJson(value);
        case 'PublicationLanguageRead':
          return new PublicationLanguageRead.fromJson(value);
        case 'PublicationLanguageUpdate':
          return new PublicationLanguageUpdate.fromJson(value);
        case 'PublicationRead':
          return new PublicationRead.fromJson(value);
        case 'PublicationUpdate':
          return new PublicationUpdate.fromJson(value);
        case 'SiteCreate':
          return new SiteCreate.fromJson(value);
        case 'SiteLanguageCreate':
          return new SiteLanguageCreate.fromJson(value);
        case 'SiteLanguageRead':
          return new SiteLanguageRead.fromJson(value);
        case 'SiteLanguageUpdate':
          return new SiteLanguageUpdate.fromJson(value);
        case 'SiteRead':
          return new SiteRead.fromJson(value);
        case 'SiteUpdate':
          return new SiteUpdate.fromJson(value);
        case 'SuccessResponseModel':
          return new SuccessResponseModel.fromJson(value);
        case 'Token':
          return new Token.fromJson(value);
        case 'UserCreate':
          return new UserCreate.fromJson(value);
        case 'UserRead':
          return new UserRead.fromJson(value);
        case 'UserUpdate':
          return new UserUpdate.fromJson(value);
        case 'ValidationError':
          return new ValidationError.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
