//
// AttachmentAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class AttachmentAPI {
    /**
     Create Attachment

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createAttachmentAttachmentsPost(body: AttachmentCreate, completion: @escaping ((_ data: AttachmentRead?,_ error: Error?) -> Void)) {
        createAttachmentAttachmentsPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create Attachment
     - POST /attachments

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "path" : "path",
  "access_type" : "access_type",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "content_type" : "content_type",
  "issue_id" : 0,
  "access_url" : "access_url",
  "name" : "name",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "id" : 6
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<AttachmentRead> 
     */
    open class func createAttachmentAttachmentsPostWithRequestBuilder(body: AttachmentCreate) -> RequestBuilder<AttachmentRead> {
        let path = "/attachments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AttachmentRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**
     Delete Attachment

     - parameter attachmentId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteAttachmentAttachmentsAttachmentIdDelete(attachmentId: Int, completion: @escaping ((_ data: SuccessResponseModel?,_ error: Error?) -> Void)) {
        deleteAttachmentAttachmentsAttachmentIdDeleteWithRequestBuilder(attachmentId: attachmentId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete Attachment
     - DELETE /attachments/{attachment_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "message" : "message"
}}]
     - parameter attachmentId: (path)  

     - returns: RequestBuilder<SuccessResponseModel> 
     */
    open class func deleteAttachmentAttachmentsAttachmentIdDeleteWithRequestBuilder(attachmentId: Int) -> RequestBuilder<SuccessResponseModel> {
        var path = "/attachments/{attachment_id}"
        let attachmentIdPreEscape = "\(attachmentId)"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachment_id}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<SuccessResponseModel>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Attachment

     - parameter attachmentId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readAttachmentAttachmentsAttachmentIdGet(attachmentId: Int, completion: @escaping ((_ data: AttachmentRead?,_ error: Error?) -> Void)) {
        readAttachmentAttachmentsAttachmentIdGetWithRequestBuilder(attachmentId: attachmentId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Attachment
     - GET /attachments/{attachment_id}
     - 

     - examples: [{contentType=application/json, example={
  "path" : "path",
  "access_type" : "access_type",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "content_type" : "content_type",
  "issue_id" : 0,
  "access_url" : "access_url",
  "name" : "name",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "id" : 6
}}]
     - parameter attachmentId: (path)  

     - returns: RequestBuilder<AttachmentRead> 
     */
    open class func readAttachmentAttachmentsAttachmentIdGetWithRequestBuilder(attachmentId: Int) -> RequestBuilder<AttachmentRead> {
        var path = "/attachments/{attachment_id}"
        let attachmentIdPreEscape = "\(attachmentId)"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachment_id}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AttachmentRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Read Attachments

     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func readAttachmentsAttachmentsGet(q: String? = nil, offset: Int? = nil, limit: Int? = nil, completion: @escaping ((_ data: [AttachmentRead]?,_ error: Error?) -> Void)) {
        readAttachmentsAttachmentsGetWithRequestBuilder(q: q, offset: offset, limit: limit).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Read Attachments
     - GET /attachments

     - examples: [{contentType=application/json, example=[ {
  "path" : "path",
  "access_type" : "access_type",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "content_type" : "content_type",
  "issue_id" : 0,
  "access_url" : "access_url",
  "name" : "name",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "id" : 6
}, {
  "path" : "path",
  "access_type" : "access_type",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "content_type" : "content_type",
  "issue_id" : 0,
  "access_url" : "access_url",
  "name" : "name",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "id" : 6
} ]}]
     - parameter q: (query)  (optional)
     - parameter offset: (query)  (optional, default to 0)
     - parameter limit: (query)  (optional, default to 100)

     - returns: RequestBuilder<[AttachmentRead]> 
     */
    open class func readAttachmentsAttachmentsGetWithRequestBuilder(q: String? = nil, offset: Int? = nil, limit: Int? = nil) -> RequestBuilder<[AttachmentRead]> {
        let path = "/attachments"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "q": q, 
                        "offset": offset?.encodeToJSON(), 
                        "limit": limit?.encodeToJSON()
        ])


        let requestBuilder: RequestBuilder<[AttachmentRead]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**
     Update Attachment

     - parameter body: (body)  
     - parameter attachmentId: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateAttachmentAttachmentsAttachmentIdPatch(body: AttachmentUpdate, attachmentId: Int, completion: @escaping ((_ data: AttachmentRead?,_ error: Error?) -> Void)) {
        updateAttachmentAttachmentsAttachmentIdPatchWithRequestBuilder(body: body, attachmentId: attachmentId).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Update Attachment
     - PATCH /attachments/{attachment_id}
     - 

     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - examples: [{contentType=application/json, example={
  "path" : "path",
  "access_type" : "access_type",
  "updated_at" : "2000-01-23T04:56:07.000+00:00",
  "content_type" : "content_type",
  "issue_id" : 0,
  "access_url" : "access_url",
  "name" : "name",
  "created_at" : "2000-01-23T04:56:07.000+00:00",
  "description" : "description",
  "id" : 6
}}]
     - parameter body: (body)  
     - parameter attachmentId: (path)  

     - returns: RequestBuilder<AttachmentRead> 
     */
    open class func updateAttachmentAttachmentsAttachmentIdPatchWithRequestBuilder(body: AttachmentUpdate, attachmentId: Int) -> RequestBuilder<AttachmentRead> {
        var path = "/attachments/{attachment_id}"
        let attachmentIdPreEscape = "\(attachmentId)"
        let attachmentIdPostEscape = attachmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{attachment_id}", with: attachmentIdPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<AttachmentRead>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PATCH", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
