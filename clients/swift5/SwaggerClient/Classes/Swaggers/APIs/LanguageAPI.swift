//
// LanguageAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class LanguageAPI {
    /**
     Create Language

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createLanguageLanguagesPost(body: LanguageCreate, completion: @escaping ((_ data: LanguageRead?,_ error: Error?) -> Void)) {
        createLanguageLanguagesPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create Language
     - POST /languages

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "code" : "code",
  "name_local" : "name_local",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "name_global" : "name_global"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<LanguageRead> 
     */
    open class func createLanguageLanguagesPostWithRequestBuilder(body: LanguageCreate) -> RequestBuilder<LanguageRead> {
        let path = "/languages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Delete Language

     - parameter languageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteLanguageLanguagesLanguageIdDelete(languageId: Int, completion: @escaping ((_ data: SuccessResponseModel?,_ error: Error?) -> Void)) {
        deleteLanguageLanguagesLanguageIdDeleteWithRequestBuilder(languageId: languageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete Language
     - DELETE /languages/{language_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter languageId: (path)  

     - returns: RequestBuilder<SuccessResponseModel> 
     */
    open class func deleteLanguageLanguagesLanguageIdDeleteWithRequestBuilder(languageId: Int) -> RequestBuilder<SuccessResponseModel> {
        var path = "/languages/{language_id}"
        let languageIdPreEscape = "\(languageId)"
        let languageIdPostEscape = languageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{language_id}", with: languageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SuccessResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Language

     - parameter languageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readLanguageLanguagesLanguageIdGet(languageId: Int, completion: @escaping ((_ data: LanguageRead?,_ error: Error?) -> Void)) {
        readLanguageLanguagesLanguageIdGetWithRequestBuilder(languageId: languageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Language
     - GET /languages/{language_id}
     - 

     - examples: [{contentType=application/json, example={
  "code" : "code",
  "name_local" : "name_local",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "name_global" : "name_global"
}}]
     - parameter languageId: (path)  

     - returns: RequestBuilder<LanguageRead> 
     */
    open class func readLanguageLanguagesLanguageIdGetWithRequestBuilder(languageId: Int) -> RequestBuilder<LanguageRead> {
        var path = "/languages/{language_id}"
        let languageIdPreEscape = "\(languageId)"
        let languageIdPostEscape = languageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{language_id}", with: languageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Languages

     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readLanguagesLanguagesGet(q: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [LanguageRead]?,_ error: Error?) -> Void)) {
        readLanguagesLanguagesGetWithRequestBuilder(q: q, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Languages
     - GET /languages

     - examples: [{contentType=application/json, example=[ {
  "code" : "code",
  "name_local" : "name_local",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "name_global" : "name_global"
}, {
  "code" : "code",
  "name_local" : "name_local",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "name_global" : "name_global"
} ]}]
     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)

     - returns: RequestBuilder<[LanguageRead]> 
     */
    open class func readLanguagesLanguagesGetWithRequestBuilder(q: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<[LanguageRead]> {
        let path = "/languages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "q": q, 
                        "offset": offset?.encodeToJSON(), 
                        "limit": limit?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[LanguageRead]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update Language

     - parameter body: (body)  
     - parameter languageId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateLanguageLanguagesLanguageIdPatch(body: LanguageUpdate, languageId: Int, completion: @escaping ((_ data: LanguageRead?,_ error: Error?) -> Void)) {
        updateLanguageLanguagesLanguageIdPatchWithRequestBuilder(body: body, languageId: languageId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Language
     - PATCH /languages/{language_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "code" : "code",
  "name_local" : "name_local",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "id" : 0,
  "name_global" : "name_global"
}}]
     - parameter body: (body)  
     - parameter languageId: (path)  

     - returns: RequestBuilder<LanguageRead> 
     */
    open class func updateLanguageLanguagesLanguageIdPatchWithRequestBuilder(body: LanguageUpdate, languageId: Int) -> RequestBuilder<LanguageRead> {
        var path = "/languages/{language_id}"
        let languageIdPreEscape = "\(languageId)"
        let languageIdPostEscape = languageIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{language_id}", with: languageIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<LanguageRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
