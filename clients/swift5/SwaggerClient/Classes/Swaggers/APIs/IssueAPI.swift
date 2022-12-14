//
// IssueAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class IssueAPI {
    /**
     Create Issue

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createIssueIssuesPost(body: IssueCreate, completion: @escaping ((_ data: IssueRead?,_ error: Error?) -> Void)) {
        createIssueIssuesPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create Issue
     - POST /issues

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "publication_id" : 0,
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "id" : 6,
  "title" : "title",
  "version" : "version"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<IssueRead> 
     */
    open class func createIssueIssuesPostWithRequestBuilder(body: IssueCreate) -> RequestBuilder<IssueRead> {
        let path = "/issues"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Create Issue Language

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createIssueLanguageIssueLanguagesPost(body: IssueLanguageCreate, completion: @escaping ((_ data: IssueLanguageRead?,_ error: Error?) -> Void)) {
        createIssueLanguageIssueLanguagesPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create Issue Language
     - POST /issue_languages

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "issue_id" : 0,
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "language_id" : 6,
  "id" : 1,
  "title" : "title",
  "version" : "version"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<IssueLanguageRead> 
     */
    open class func createIssueLanguageIssueLanguagesPostWithRequestBuilder(body: IssueLanguageCreate) -> RequestBuilder<IssueLanguageRead> {
        let path = "/issue_languages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueLanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Delete Issue

     - parameter issueId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteIssueIssuesIssueIdDelete(issueId: Int, completion: @escaping ((_ data: SuccessResponseModel?,_ error: Error?) -> Void)) {
        deleteIssueIssuesIssueIdDeleteWithRequestBuilder(issueId: issueId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete Issue
     - DELETE /issues/{issue_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter issueId: (path)  

     - returns: RequestBuilder<SuccessResponseModel> 
     */
    open class func deleteIssueIssuesIssueIdDeleteWithRequestBuilder(issueId: Int) -> RequestBuilder<SuccessResponseModel> {
        var path = "/issues/{issue_id}"
        let issueIdPreEscape = "\(issueId)"
        let issueIdPostEscape = issueIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_id}", with: issueIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SuccessResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Delete Issue Language

     - parameter issueLanguageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteIssueLanguageIssueLanguagesIssueLanguageIdDelete(issueLanguageId: Int, completion: @escaping ((_ data: SuccessResponseModel?,_ error: Error?) -> Void)) {
        deleteIssueLanguageIssueLanguagesIssueLanguageIdDeleteWithRequestBuilder(issueLanguageId: issueLanguageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete Issue Language
     - DELETE /issue_languages/{issue_language_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter issueLanguageId: (path)  

     - returns: RequestBuilder<SuccessResponseModel> 
     */
    open class func deleteIssueLanguageIssueLanguagesIssueLanguageIdDeleteWithRequestBuilder(issueLanguageId: Int) -> RequestBuilder<SuccessResponseModel> {
        var path = "/issue_languages/{issue_language_id}"
        let issueLanguageIdPreEscape = "\(issueLanguageId)"
        let issueLanguageIdPostEscape = issueLanguageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_language_id}", with: issueLanguageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SuccessResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Issue

     - parameter issueId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readIssueIssuesIssueIdGet(issueId: Int, completion: @escaping ((_ data: IssueRead?,_ error: Error?) -> Void)) {
        readIssueIssuesIssueIdGetWithRequestBuilder(issueId: issueId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Issue
     - GET /issues/{issue_id}
     - 

     - examples: [{contentType=application/json, example={
  "publication_id" : 0,
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "id" : 6,
  "title" : "title",
  "version" : "version"
}}]
     - parameter issueId: (path)  

     - returns: RequestBuilder<IssueRead> 
     */
    open class func readIssueIssuesIssueIdGetWithRequestBuilder(issueId: Int) -> RequestBuilder<IssueRead> {
        var path = "/issues/{issue_id}"
        let issueIdPreEscape = "\(issueId)"
        let issueIdPostEscape = issueIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_id}", with: issueIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Issue Language

     - parameter issueLanguageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readIssueLanguageIssueLanguagesIssueLanguageIdGet(issueLanguageId: Int, completion: @escaping ((_ data: IssueLanguageRead?,_ error: Error?) -> Void)) {
        readIssueLanguageIssueLanguagesIssueLanguageIdGetWithRequestBuilder(issueLanguageId: issueLanguageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Issue Language
     - GET /issue_languages/{issue_language_id}
     - 

     - examples: [{contentType=application/json, example={
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "issue_id" : 0,
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "language_id" : 6,
  "id" : 1,
  "title" : "title",
  "version" : "version"
}}]
     - parameter issueLanguageId: (path)  

     - returns: RequestBuilder<IssueLanguageRead> 
     */
    open class func readIssueLanguageIssueLanguagesIssueLanguageIdGetWithRequestBuilder(issueLanguageId: Int) -> RequestBuilder<IssueLanguageRead> {
        var path = "/issue_languages/{issue_language_id}"
        let issueLanguageIdPreEscape = "\(issueLanguageId)"
        let issueLanguageIdPostEscape = issueLanguageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_language_id}", with: issueLanguageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueLanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Issue Languages

     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readIssueLanguagesIssueLanguagesGet(q: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [IssueLanguageRead]?,_ error: Error?) -> Void)) {
        readIssueLanguagesIssueLanguagesGetWithRequestBuilder(q: q, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Issue Languages
     - GET /issue_languages

     - examples: [{contentType=application/json, example=[ {
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "issue_id" : 0,
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "language_id" : 6,
  "id" : 1,
  "title" : "title",
  "version" : "version"
}, {
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "issue_id" : 0,
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "language_id" : 6,
  "id" : 1,
  "title" : "title",
  "version" : "version"
} ]}]
     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)

     - returns: RequestBuilder<[IssueLanguageRead]> 
     */
    open class func readIssueLanguagesIssueLanguagesGetWithRequestBuilder(q: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<[IssueLanguageRead]> {
        let path = "/issue_languages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "q": q, 
                        "offset": offset?.encodeToJSON(), 
                        "limit": limit?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[IssueLanguageRead]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Issues

     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readIssuesIssuesGet(q: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [IssueRead]?,_ error: Error?) -> Void)) {
        readIssuesIssuesGetWithRequestBuilder(q: q, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Issues
     - GET /issues

     - examples: [{contentType=application/json, example=[ {
  "publication_id" : 0,
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "id" : 6,
  "title" : "title",
  "version" : "version"
}, {
  "publication_id" : 0,
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "id" : 6,
  "title" : "title",
  "version" : "version"
} ]}]
     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)

     - returns: RequestBuilder<[IssueRead]> 
     */
    open class func readIssuesIssuesGetWithRequestBuilder(q: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<[IssueRead]> {
        let path = "/issues"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "q": q, 
                        "offset": offset?.encodeToJSON(), 
                        "limit": limit?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[IssueRead]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update Issue

     - parameter body: (body)  
     - parameter issueId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateIssueIssuesIssueIdPatch(body: IssueUpdate, issueId: Int, completion: @escaping ((_ data: IssueRead?,_ error: Error?) -> Void)) {
        updateIssueIssuesIssueIdPatchWithRequestBuilder(body: body, issueId: issueId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Issue
     - PATCH /issues/{issue_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "publication_id" : 0,
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "id" : 6,
  "title" : "title",
  "version" : "version"
}}]
     - parameter body: (body)  
     - parameter issueId: (path)  

     - returns: RequestBuilder<IssueRead> 
     */
    open class func updateIssueIssuesIssueIdPatchWithRequestBuilder(body: IssueUpdate, issueId: Int) -> RequestBuilder<IssueRead> {
        var path = "/issues/{issue_id}"
        let issueIdPreEscape = "\(issueId)"
        let issueIdPostEscape = issueIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_id}", with: issueIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Update Issue Language

     - parameter body: (body)  
     - parameter issueLanguageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateIssueLanguageIssueLanguagesIssueLanguageIdPatch(body: IssueLanguageUpdate, issueLanguageId: Int, completion: @escaping ((_ data: IssueLanguageRead?,_ error: Error?) -> Void)) {
        updateIssueLanguageIssueLanguagesIssueLanguageIdPatchWithRequestBuilder(body: body, issueLanguageId: issueLanguageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Issue Language
     - PATCH /issue_languages/{issue_language_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "image" : "image",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "keywords" : "keywords",
  "issue_id" : 0,
  "author" : "author",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "long_description" : "long_description",
  "language_id" : 6,
  "id" : 1,
  "title" : "title",
  "version" : "version"
}}]
     - parameter body: (body)  
     - parameter issueLanguageId: (path)  

     - returns: RequestBuilder<IssueLanguageRead> 
     */
    open class func updateIssueLanguageIssueLanguagesIssueLanguageIdPatchWithRequestBuilder(body: IssueLanguageUpdate, issueLanguageId: Int) -> RequestBuilder<IssueLanguageRead> {
        var path = "/issue_languages/{issue_language_id}"
        let issueLanguageIdPreEscape = "\(issueLanguageId)"
        let issueLanguageIdPostEscape = issueLanguageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{issue_language_id}", with: issueLanguageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<IssueLanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
